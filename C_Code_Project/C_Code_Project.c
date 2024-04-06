// Lcd Pin Out Settings
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D4 at RB0_bit;

// Pin Direction
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB0_bit;

void main() {
  int i;
  Lcd_Init();
  LCD_Cmd(_LCD_CURSOR_OFF);

  while(1){
    for (i=0;i<16;i++){
    Lcd_Out(1, i, "Hello");
    Lcd_Out(2, 16-i, "World!");
    delay_ms(100);
    Lcd_Cmd(_LCD_CLEAR);
    }
    for (i=0;i<16;i++){
    Lcd_Out(1, 16-i, "Hello!");
    Lcd_Out(2, i, "World!");
    delay_ms(100);
    Lcd_Cmd(_LCD_CLEAR);
    }
  }
}