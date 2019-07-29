#ifndef __SHOW_H
#define __SHOW_H
#include "sys.h"
  /**************************************************************************
作者：平衡小车之家
我的淘宝小店：http://shop114407458.taobao.com/
**************************************************************************/
void oled_show(void);
void APP_Show(void);
void DataScope(void);
void OLED_DrawPoint_Shu(u8 x,u8 y,u8 t);
void OLED_Show_CCD(void);
void oled_show_once(void);
#endif
