db $42

JMP Main : JMP Main : JMP Main
JMP Return : JMP Return
JMP Return : JMP Return
JMP Main : JMP Main : JMP Main

incsrc ../../Patches/Defines.asm

Main:
	REP #$20
	LDA !ScreenXPos : STA $1A : STA $1E
	LDA !ScreenYPos : STA $1C : STA $20
	STZ $1411
	SEP #$20
Return:
	RTL