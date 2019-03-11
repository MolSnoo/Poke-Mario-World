db $42

JMP MarioBelow : JMP MarioAbove : JMP MarioSide
JMP SpriteV : JMP SpriteH 
JMP MarioCape : JMP MarioFireBall
JMP MarioCorner : JMP MarioBodyInside : JMP MarioHeadInside

incsrc ../../Patches/Defines.asm
incsrc ../../Patches/Subroutines.asm

SpriteV:
SpriteH:
	RTL
	
MarioBelow:
MarioAbove:
MarioCorner:
RTL
MarioSide:
MarioHeadInside:
MarioCape:
MarioFireBall:
MarioBodyInside:
	LDA !EncounterFlag
	BEQ CheckPosition
	CMP #$01 : BEQ Encounter
	CMP #$02 : BEQ NoEncounter
	
	LDA #$01 : STA !EncounterFlag
	RTL
	
CheckPosition:
	; Check if Mario's position is divisible by 10. If not, don't do anything.
	LDA $D1 : AND #$0F : BNE DivReturn
	LDA $D3 : AND #$0F : BNE DivReturn
	INC !EncounterFlag
	RTL
	
Encounter:
	LDA #$02 : STA !BattleState
	LDA #$02
	JSR Random
	TAX
	LDA .Pokemon,x : STA !Enemy
	LDA #$09 : STA !EnemyLevel
	LDA $76 : STA !Facing
	
	INC !EncounterFlag
	RTL
	
.Pokemon
	db $01,$04,$07
	
DivReturn:
	STZ !EncounterFlag
NoEncounter:
	RTL