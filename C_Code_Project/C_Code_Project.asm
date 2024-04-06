
_main:

;C_Code_Project.c,17 :: 		void main() {
;C_Code_Project.c,19 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;C_Code_Project.c,20 :: 		LCD_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;C_Code_Project.c,22 :: 		while(1){
L_main0:
;C_Code_Project.c,23 :: 		for (i=0;i<16;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      16
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;C_Code_Project.c,24 :: 		Lcd_Out(1, i, "Hello");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_C_Code_Project+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;C_Code_Project.c,25 :: 		Lcd_Out(2, 16-i, "World!");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_i_L0+0, 0
	SUBLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_C_Code_Project+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;C_Code_Project.c,26 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;C_Code_Project.c,27 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;C_Code_Project.c,23 :: 		for (i=0;i<16;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;C_Code_Project.c,28 :: 		}
	GOTO       L_main2
L_main3:
;C_Code_Project.c,29 :: 		for (i=0;i<16;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main6:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      16
	SUBWF      main_i_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;C_Code_Project.c,30 :: 		Lcd_Out(1, 16-i, "Hello!");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_i_L0+0, 0
	SUBLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_C_Code_Project+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;C_Code_Project.c,31 :: 		Lcd_Out(2, i, "World!");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_C_Code_Project+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;C_Code_Project.c,32 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;C_Code_Project.c,33 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;C_Code_Project.c,29 :: 		for (i=0;i<16;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;C_Code_Project.c,34 :: 		}
	GOTO       L_main6
L_main7:
;C_Code_Project.c,35 :: 		}
	GOTO       L_main0
;C_Code_Project.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
