# ================================
# 特殊文件解析证明材料
# 生成时间: 2025
# ================================
[Typical]
ID=1234
Name=My Custom Map Style
Version=1.0
Creator=Your Name
Date=2024

[Colors]
; 颜色定义
Color1=255,0,0,255     ; 红色，不透明
Color2=0,255,0,128     ; 绿色，半透明
Color3=0,0,255,255     ; 蓝色，不透明
Background=240,240,240,255 ; 背景色

[Line Types]
; 线条样式
Highway=0,5,2,Color1   ; 实线，宽度5，颜色1
Secondary=2,3,1,Color2 ; 虚线，宽度3，颜色2
Trail=1,2,1,Color3     ; 点线，宽度2，颜色3

[Point Types]
; 点标记
City=24,16,Color1,1    ; 图标24，大小16，颜色1，边框1
POI=32,12,Color2,0     ; 图标32，大小12，颜色2，无边框

[Polygon Types]
; 多边形填充
Water=45,Color3,1      ; 图案45，颜色3，边框1
Forest=23,Color2,0     ; 图案23，颜色2，无边框

[Text Styles]
; 文字样式
CityName=Times New Roman,14,1,Color1,0,0
RoadName=Arial,10,0,Color2,1,1

[Levels]
; 显示级别
0=0,1000              ; 级别0，缩放范围0-1000
1=1000,5000           ; 级别1，缩放范围1000-5000
2=5000,20000          ; 级别2，缩放范围5000-20000