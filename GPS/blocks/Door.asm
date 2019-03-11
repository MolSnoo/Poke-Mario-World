db $42

JMP MarioBelow : JMP MarioAbove : JMP MarioSide
JMP SpriteV : JMP SpriteH 
JMP MarioCape : JMP MarioFireBall
JMP MarioCorner : JMP MarioBodyInside : JMP MarioHeadInside

incsrc ../../Patches/Defines.asm

MarioBodyInside:
	REP #$30
	LDX #$0000
.Level
	LDA WarpTable,x
	CMP #$FFFF : BEQ NoExit
	CMP !Level : BEQ .XPos
	TXA : CLC : ADC #$000A : TAX
	BRA .Level
.XPos
	INX #2
	LDA $9A : AND #$FFF0 : CMP WarpTable,x : BEQ .Warp
	TXA : CLC : ADC #$0008 : TAX
	BRA .Level
.Warp
	INX #2
	LDA WarpTable,x : SEP #$30 : LDY $95 : STA $19B8,y
	REP #$10 : INX
	LDA WarpTable,x : ORA #%00000110 : SEP #$10 : STA $19D8,y
	LDA #$06 : STA $71
	STZ $88 : STZ $89
	
	REP #$30
	INX
	LDA WarpTable,x : STA !ScreenXPos : INX #2
	LDA WarpTable,x : STA !ScreenYPos
	SEP #$30
MarioBelow:
MarioAbove:
MarioSide:
SpriteV:
SpriteH:
MarioCape:
MarioFireBall:
MarioCorner:
MarioHeadInside:
	RTL
	
NoExit:
	LDA #$0000
	%teleport()
	RTL
	
WarpTable:
	dw $0105,$00B0,$0000,$0200,$0000
	dw $0105,$0310,$0001,$0300,$0000
	dw $0105,$0430,$0002,$0200,$0000
	dw $FFFF
	