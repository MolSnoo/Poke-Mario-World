	!Level			= $010B
	
	!Overhead		= $18C5
	!Direction		= $18C6
	!LastDirection	= $18C7
	!Timer			= $18C8
	
	!ScreenXPos		= $18C9
	!ScreenYPos		= $18CB
	
	!ScratchRAM1	= $18C9
	!ScratchRAM2	= $0F68
	!ScratchRAM3	= $0F6A
	
	!EncounterFlag	= $0DD9
	
	!BattleState		= $1FFA
	!Overworld			= $00
	!PlayerWin			= $01
	!FadeIn				= $02
	!UploadSprites		= $03
	!EnemyStats			= $04
	!DispWildPoke		= $05
	!ThrowPoke			= $06
	!DisplayStats		= $07
	!UploadTextBox		= $08
	!MessageInit		= $09
	!MessageWrite		= $0A
	!UploadBattleBox	= $0B
	!BattleSelect		= $0C
	!AttackSelect		= $0D
	!DisplayAttack		= $0E
	!DecreaseHP			= $0F
	!PokeSelect			= $10
	!ItemSelect			= $11
	!Run				= $12
	
	!PaletteFlag	= $18CB
	!DMAFlag		= $63
	!Tilemap1 		= $60
	!Dest1			= $7F9C7D
	!Size1			= $7F9C7F
	!Tilemap2 		= $0F3A
	!Dest2			= $7F9C81
	!Size2			= $7F9C83
	!Tilemap3 		= $0F3D
	!Dest3			= $7F9C85
	!Size3			= $7F9C87
	!Tilemap4 		= $0F42
	!Dest4			= $7F9C89
	!Size4			= $7F9C8B
	!Tilemap5 		= $0F45
	!Dest5			= $7F9C8D
	!Size5			= $7F9C8F
	!Tilemap6		= $0F5E
	!Dest6			= $7F9C91
	!Size6			= $7F9C93
	!Tilemap7		= $0F61
	!Dest7			= $7F9C95
	!Size7			= $7F9C97
	!Tilemap8		= $0F64
	!Dest8			= $7F9C99
	!Size8			= $7F9C9B
	
	; 20 bytes at $0F5E
	
	!Message		= $F0
	!MessageData	= $7FA000
	!NameData		= $7F9F80
	!TextPos		= $140B
	!TextPosInit	= $1415
	!MessageDone	= $1FFF
	!TextSpeed		= $1F48
	!CursorPos		= $18C8
	
	!PoseRight1		= $00
	!PoseRight2		= $02
	!PoseRight3		= $0B
	!PoseLeft1		= $03
	!PoseLeft2		= $04
	!PoseLeft3		= $0C
	!PoseDown1		= $06
	!PoseDown2		= $07
	!PoseDown3		= $0D
	!PoseUp1		= $09
	!PoseUp2		= $0A
	!PoseUp3		= $0E
	
	!Facing			= $7F9C7B
	
	!NumberMoves	= $7F9C7C
	!ModifierText	= $0F6C
	
	!Enemy			= $7F9D00
	!EnemyHP		= !Enemy+1
	!EnemyLevel		= !Enemy+3
	!EnemyStatus	= !Enemy+4
	!EnemyType1		= !Enemy+5
	!EnemyType2		= !Enemy+6
	!EnemyCatchRate	= !Enemy+7
	!EnemyMove1		= !Enemy+8
	!EnemyMove2		= !Enemy+9
	!EnemyMove3		= !Enemy+$0A
	!EnemyMove4		= !Enemy+$0B
	!EnemyEXP		= !Enemy+$0D
	!EnemyIVs		= !Enemy+$1A
	!EnemyMove1PP	= !Enemy+$1C
	!EnemyMove2PP	= !Enemy+$1D
	!EnemyMove3PP	= !Enemy+$1E
	!EnemyMove4PP	= !Enemy+$1F
	!EnemyMaxHP		= !Enemy+$20
	!EnemyAttack	= !Enemy+$22
	!EnemyDefense	= !Enemy+$24
	!EnemySpeed		= !Enemy+$26
	!EnemySpecial	= !Enemy+$28
	!EnemyName		= !Enemy+$2A
	!EnemyNameShort	= $9D2A
	
	;=======================================================
	; POKEMON STATES
	;-------------------------------------------------------
	; Offset			Contents					Size
	;-------------------------------------------------------
	; 0x00				Species number				1 byte
	; 0x01				Current HP					2 bytes
	; 0x03				Level						1 byte
	; 0x04				Status condition			1 byte
	; 0x05				Type 1						1 byte
	; 0x06				Type 2						1 byte
	; 0x07				Catch rate/Held item		1 byte
	; 0x08				Move 1						1 byte
	; 0x09				Move 2						1 byte
	; 0x0A				Move 3						1 byte
	; 0x0B				Move 4						1 byte
	; 0x0C				Padding						1 byte
	; 0x0D				Experience points			3 bytes
	; 0x10				HP EV data					2 bytes
	; 0x12				Attack EV data				2 bytes
	; 0x14				Defense EV data				2 bytes
	; 0x16				Speed EV data				2 bytes
	; 0x18				Special EV data				2 bytes
	; 0x1A				IV data						2 bytes
	; 0x1C				Move 1 PP					1 byte
	; 0x1D				Move 2 PP					1 byte
	; 0x1E				Move 3 PP					1 byte
	; 0x1F				Move 4 PP					1 byte
	; 0x20				Maximum HP					2 bytes
	; 0x22				Attack						2 bytes
	; 0x24				Defense						2 bytes
	; 0x26				Speed						2 bytes
	; 0x28				Special						2 bytes
	; 0x2A				Nickname					20 bytes
	; 0x3E				Padding						2 bytes
	;=======================================================
	
	!NumberPokes	= $70035A
	!Poke1			= $70035B
	!Poke1HP		= !Poke1+1
	!Poke1Level		= !Poke1+3
	!Poke1Status	= !Poke1+4
	!Poke1Type1		= !Poke1+5
	!Poke1Type2		= !Poke1+6
	!Poke1CatchRate	= !Poke1+7
	!Poke1Move1		= !Poke1+8
	!Poke1Move2		= !Poke1+9
	!Poke1Move3		= !Poke1+$0A
	!Poke1Move4		= !Poke1+$0B
	!Poke1EXP		= !Poke1+$0D
	!Poke1IVs		= !Poke1+$1A
	!Poke1Move1PP	= !Poke1+$1C
	!Poke1Move2PP	= !Poke1+$1D
	!Poke1Move3PP	= !Poke1+$1E
	!Poke1Move4PP	= !Poke1+$1F
	!Poke1MaxHP		= !Poke1+$20
	!Poke1Attack	= !Poke1+$22
	!Poke1Defense	= !Poke1+$24
	!Poke1Speed		= !Poke1+$26
	!Poke1Special	= !Poke1+$28
	!Poke1Name		= !Poke1+$2A
	!Poke1NameShort	= $0385
	!PartyPoke2		= $70039B
	!PartyPoke3		= $7003DB
	!PartyPoke4		= $70041B
	!PartyPoke5		= $70045B
	!PartyPoke6		= $70049B
	
	!Move1			= $7F9D80
	!Move2			= $7F9E00
	!Move3			= $7F9E80
	!Move4			= $7F9F00
	
	!RunAttempts	= $0F67
	
	!Box1Line1		= $7F9D80
	!Box1Line2		= $7F9DA0
	!Box1Line3		= $7F9DC0
	!Box1Line4		= $7F9DE0
	!Box2Line1		= $7F9E00
	!Box2Line2		= $7F9E20
	!Box2Line3		= $7F9E40
	