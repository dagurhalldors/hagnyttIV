#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include <em_usart.h>

unsigned char InByte;

void PrintOutChr(unsigned int InVar)
{
    char OutChr[10];
    unsigned int StrLen,i;

    StrLen = sprintf(OutChr, "%d\r\n", InVar);
    //Delay_Long();
    for(i = 0 ; i<(StrLen) ; i++)
      USART_Tx(USART0, OutChr[i]);
}

void PrintOutUnsigned(int InVar)
{
    unsigned char OutChr[10];
    int StrLen,i;

    StrLen = sprintf(OutChr, "%d\r", InVar);
    //Delay_Long();
    for(i = 0 ; i<(StrLen) ; i++)
      USART_Tx(USART0, OutChr[i]);
}


//****Ýmis delay****//
void Delay_Long(void)
{
  unsigned int c,d;

  for(c=0; c<32000; c++)
  {
    for(d=0; d<25; d++);
  }
}

void Delay_Short(void)
{
  unsigned int c,d;

  for(c=0; c<32000; c++)
  {
    for(d=0; d<2; d++);
  }
}

void delay_1(void)
{
  unsigned int a;

  for(a=0; a<500; a++){}
}

void my_delay(){
  for (long int i = 0; i < 10000; i++){
      printf("A");
  }
}

void my_delay_short(){
  for (long int i = 0; i < 100; i++){
      printf("A");
  }
}



//****ID frá BMI****//
void WhoAmI_STORI(void)
 {
  unsigned char AdrByte, DataByte;

    //CS í low til að byrja samskipti
    GPIO_PinOutClear(gpioPortD, 9);//CS_0 BMI270

    AdrByte  = 0x0F; //Chip ID address
    AdrByte |= 0x80; //MSB í high til að lesa
    DataByte = 0x00;

    InByte = USART_SpiTransfer(USART1, AdrByte);
    InByte = USART_SpiTransfer(USART1, DataByte);
    Delay_Long();

    PrintOutChr((unsigned int)InByte); //prenta ID

    //CS í high til að stoppa samskipti
    GPIO_PinOutSet(gpioPortD, 9);//CS_0 BMI270
 }

//****INIT H3LIS331DL****//
void stori_wakeup(){
    char init_fin[] = "WAKEUP DONE\r\n";
    uint32_t fin_len = sizeof(init_fin)-1;

    unsigned char AdrByte, DataByte;

    AdrByte = 0x20; //control register 1
    //DataByte = 0b00111111; //Normal power, 1000Hz x,y,z enable
    DataByte = 0b00100111; //Normal power, 50Hz x,y,z enable

    GPIO_PinOutClear(gpioPortD, 9);//CS_0 BMI270
    InByte = USART_SpiTransfer(USART1, AdrByte);
    PrintOutChr(DataByte);
    InByte = USART_SpiTransfer(USART1, DataByte);
    GPIO_PinOutSet(gpioPortD, 9);//CS_0 BMI270
    PrintOutChr(DataByte);
    Delay_Long();

    for(unsigned int i = 0; i < fin_len; i++)//prenta finish streng
         USART_Tx(USART0, init_fin[i]);
    Delay_Long();
}

//****LESA ÚR REGISTER H3LIS331DL****//
char read_reg_STORI(char AdrByte)
 {
  unsigned char DataByte;

    //CS í low til að byrja samskipti
    GPIO_PinOutClear(gpioPortD, 9);//CS_0 BMI270

    AdrByte |= 0x80; //MSB í high til að lesa
    DataByte = 0x00;

    InByte = USART_SpiTransfer(USART1, AdrByte);
    InByte = USART_SpiTransfer(USART1, DataByte);
    //InByte = USART_SpiTransfer(USART1, DataByte);

    //CS í high til að stoppa samskipti
    GPIO_PinOutSet(gpioPortD, 9);//CS_0 BMI270
    Delay_Long();

    return InByte;
 }


//****LESA X,Y,Z og skila sem 16bita****//
signed int read_stori_value(char axis){
  char AdrByte, DataByte, HByte, LByte;

  signed int data;

  switch(axis){
    case 'x':
      AdrByte = 0x28;
      break;

    case 'y':
      AdrByte = 0x2A;
      break;

    case 'z':
      AdrByte = 0x2C;
      break;
  }

  LByte = read_reg_STORI(AdrByte); //lesa LOWbyte
  HByte = read_reg_STORI(AdrByte+1); //lesa HIGHByte

  data = HByte << 8;
  data |= LByte;

  //Skilar mínus tölu (twos compliment)
  if (data >= 32768){
      data = data-65536;
  }
  return data;
}


//****GPIO****//
void GPIO_Init(){
  //CMU_ClockEnable(cmuClock_GPIO, true);

  GPIO_PinModeSet(gpioPortC, 7, gpioModePushPull, 1);    //Led
  GPIO_PinModeSet(gpioPortD, 9, gpioModePushPull, 1);    //CS0

  GPIO_PinOutSet(gpioPortC, 7);     // LED
  GPIO_PinOutSet(gpioPortD, 9);    // CS_0
}


//****SENDA YFIR USB INIT****//
void Usart_Init(){

  /* Enable clock for GPIO module */
  CMU_ClockEnable(cmuClock_HFPER, true);        // Enable clock for HF peripherals
  CMU_ClockEnable(cmuClock_USART0, true);       // Enable clock for USART module USART0
  CMU_ClockEnable(cmuClock_GPIO, true);

  USART_InitAsync_TypeDef initAsync = USART_INITASYNC_DEFAULT;
  //initAsync.baudrate = 115200;
  USART_InitAsync(USART0, &initAsync);

  GPIO_PinModeSet(gpioPortB,  14, gpioModePushPull, 1); //UART0

  USART_Enable(USART0, usartEnableTx);

  USART0->ROUTELOC0 = (USART0->ROUTELOC0 & (~_USART_ROUTELOC0_TXLOC_MASK)) | USART_ROUTELOC0_TXLOC_LOC9;
  USART0->ROUTEPEN = USART0->ROUTEPEN | USART_ROUTEPEN_TXPEN;
}


//****SPI****//
void SPI_Init(){
  /* USART is a HFPERCLK peripheral. Enable HFPERCLK domain and USART0.
   * We also need to enable the clock for GPIO to configure pins. */
  CMU_ClockEnable(cmuClock_HFPER, true);
  CMU_ClockEnable(cmuClock_USART1, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  /* Initialize with default settings and then update fields according to application requirements. */
  USART_InitSync_TypeDef initSync = USART_INITSYNC_DEFAULT;

  /* Operate as SPI master */
  initSync.master = true;

  initSync.msbf = true; //ATH MIILVÆGT!!!

  //initSync.clockMode = usartClockMode1; //ATH!!!
  initSync.clockMode = usartClockMode0;
  USART_InitSync(USART1, &initSync);

  /* Set up TX pin */
  USART1->ROUTELOC0 = (USART1->ROUTELOC0 & (~_USART_ROUTELOC0_TXLOC_MASK)) | USART_ROUTELOC0_TXLOC_LOC0;
  USART1->ROUTEPEN = USART1->ROUTEPEN | USART_ROUTEPEN_TXPEN;

  /* Set up RX pin */
  USART1->ROUTELOC0 = (USART1->ROUTELOC0 & (~_USART_ROUTELOC0_RXLOC_MASK)) | USART_ROUTELOC0_RXLOC_LOC0;
  USART1->ROUTEPEN = USART1->ROUTEPEN | USART_ROUTEPEN_RXPEN;

  /* Set up CLK pin */
  USART1->ROUTELOC0 = (USART1->ROUTELOC0 & (~_USART_ROUTELOC0_CLKLOC_MASK)) | USART_ROUTELOC0_CLKLOC_LOC0;
  USART1->ROUTEPEN = USART1->ROUTEPEN | USART_ROUTEPEN_CLKPEN;

  GPIO_PinModeSet(gpioPortA,  0, gpioModePushPull, 0); //MOSI  0
  GPIO_PinModeSet(gpioPortA,  1, gpioModeInput, 1);    //MISO
  GPIO_PinModeSet(gpioPortA,  2, gpioModePushPull, 0); //CLK   1

  USART_Enable(USART1, usartEnable);  //Enable both TX and Rx
}


//****Init á allt****///
void Init_ALL(){

  char init_fin[] = "INIT DONE\r\n";
  uint32_t fin_len = sizeof(init_fin)-1;

  CHIP_Init();
  Usart_Init();
  SPI_Init();
  GPIO_Init();

  for(unsigned int i = 0; i < fin_len; i++)//prenta finish streng
     USART_Tx(USART0, init_fin[i]);
}


int main(void)
{
  Init_ALL(); //Go through all peripheral init
  stori_wakeup(); //Vekja nema

  int x, y, z;

  char OutBuf[50]; //buffer fyrir gogn
  unsigned int StrLen,i;

  while(1){

      GPIO_PinOutClear(gpioPortC, 7);     //Led ON

      //lesa gildi frá x, y, z á H3LIS331DL
      x = read_stori_value('x');
      y = read_stori_value('y');
      z = read_stori_value('z');

      //prentar x,y,z
      StrLen = sprintf (OutBuf, "X:\t%d\tY:\t%d\tZ:\t%d\n\r", x,y,z);
      //StrLen = sprintf (OutBuf, "%d,%d,%d\n", x,y,z); //fyrir matlab
          for(i = 0 ; i<StrLen ; i++)
            USART_Tx(USART0, OutBuf[i]);
  }
}
