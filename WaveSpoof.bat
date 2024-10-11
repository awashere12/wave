cd %~dp0
@echo off
color a
setlocal enabledelayedexpansion

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "random_string="

for /l %%i in (1,1,15) do (
    set /a "random_num=!random! %% 36"
    for %%j in (!random_num!) do set "random_char=!chars:~%%j,1!"
    set "random_string=!random_string!!random_char!"
    if %%i equ 5 set "random_string=!random_string!-"
    if %%i equ 10 set "random_string=!random_string!-"
)

AMIDEWINx64.EXE /SU auto
AMIDEWINx64.EXE /SS "%random_string%"
AMIDEWINx64.EXE /SV "1.0"
AMIDEWINx64.EXE /CSK "%random_string%"
AMIDEWINx64.EXE /CM  "%random_string%"
AMIDEWINx64.EXE /SP "%random_string%"
AMIDEWINx64.EXE /SM "%random_string%"
AMIDEWINx64.EXE /SK "%random_string%"
AMIDEWINx64.EXE /SF "%random_string%"
AMIDEWINx64.EXE /BM "%random_string%"
AMIDEWINx64.EXE /BP "%random_string%"
AMIDEWINx64.EXE /BV "1.0"
AMIDEWINx64.EXE /BT "%random_string%"
AMIDEWINx64.EXE /BLC "%random_string%"
AMIDEWINx64.EXE /PSN "%random_string%"
AMIDEWINx64.EXE /PAT "%random_string%"
AMIDEWINx64.EXE /PPN "%random_string%"
AMIDEWINx64.EXE /CSK "%random_string%"
AMIDEWINx64.EXE /CS "%random_string%"
AMIDEWINx64.EXE /CV "1.0"
AMIDEWINx64.EXE /CM "%random_string%"
AMIDEWINx64.EXE /CA "%random_string%"
AMIDEWINx64.EXE /CO "0000 0000h"
AMIDEWINx64.EXE /CT "03h"
AMIDEWINx64.EXE /IV "3.80"
AMIDEWINx64.EXE /IVN "%random_string%"
AMIDEWINx64.EXE /BS "%random_string%"
cls
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
timeout 1
sc start winmgmt
timeout 1
exit
