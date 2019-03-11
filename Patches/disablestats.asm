;===================
;Disable Status Bar per flag
;Set the flag and the patch will hide the statusbar and will disable it, but only temporally!
;
;===================

HEADER
LOROM

!Freespace = $268000	;Point Freespace Code
!RAM = $18C5		;Default RAM, change if necessary

org $008E1A
JML New
NOP

org $008292
JML Mew2
NOP

org !Freespace

db "STAR"
dw EndCode-StartCode-$01
dw EndCode-StartCode-$01^$FFFF

StartCode:

New:
LDA !RAM
BNE Disable
BEQ NotDisable
RTL

Disable:
JML $808FF9

NotDisable:
LDA $1493
ORA $9D
JML $808E1F

Mew2:
LDA !RAM
BNE Disable2
BEQ NotDisable2
RTL

Disable2:
JML $808297

NotDisable2:
LDY #$24
LDA $4211
JML $808297

EndCode: