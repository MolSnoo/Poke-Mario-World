org $0081F2
autoclean JML NoStatusBar
NOP #4

org $008292
autoclean JML FixIRQ
NOP

org $0082E2
autoclean JML NoDrawStatusBar
NOP #2

org $00835C
autoclean JML FixIRQJump
NOP #20

org $008CFF
autoclean JML NoGM4DMA
NOP

org $008DAC
autoclean JML NoDMAStatusBar
NOP

org $008E1A
autoclean JML NoStatusBarCounters
NOP

;org $008292
;autoclean JML NoStatusBar
;NOP
;
;org $008E1A
;autoclean JML NoCounters
;NOP

;org $00A300
;autoclean JML NoMarioDMA

org $00CFC6
autoclean JML NoLookUp
NOP

org $00D606
autoclean JML NoDuck
NOP

org $00D618
autoclean JML NoJump

org $00D639
autoclean JML NoSpin
NOP

org $00D713
autoclean JML NoPhysics

; http://bin.smwcentral.net/u/75/InteractionPoints.txt
org $00E832
dw $0008,$000F,$000F,$0008,$0005,$000B	
dw $0008,$FFFF,$FFFF,$0008,$000B,$0005

org $00E89E
dw $0018,$001A,$0016,$000F,$0020,$0020
dw $0018,$001A,$0016,$000F,$0020,$0020

org $00E359
autoclean JML NoPush

org $05D7FE
LDA $00 : AND #$30

incsrc Defines.asm

freecode
reset bytes

NoStatusBar:
	PHP : PHA
	LDA !Overhead : BNE OverrideStatusBar
	PLA : PLP
	BCS StatusBarReturn
	
	PHK
	PEA.w StatusBarReturn-1
	PEA.w $0084CF-1
	JML $008DAC
OverrideStatusBar:
	PLA : PLP
StatusBarReturn:
	LDA $13C6 : JML $0081FA
	
FixIRQ:
	LDA !Overhead : BNE ZeroScanline
	LDY #$24 : BRA IRQReturn
ZeroScanline:
	LDY #$00
IRQReturn:
	LDA $4211 : JML $008297
	
NoDrawStatusBar:
	LDA !Overhead : BNE OverrideDrawStatusBar
	LDA $0D9B : LSR : BCS OverrideDrawStatusBar
	JML $0082E8
OverrideDrawStatusBar:
	JML $0082EB
	
FixIRQJump:
	LDY #$24 : BIT $0D9B : BVC +
	LDA $13FC : ASL : TAX
	LDA $00F8E8,x : CMP #$2A : BNE +
	LDY #$2D
+	JMP IRQReturn

NoGM4DMA:
	LDA !Overhead : BNE OverrideGM4DMA
	LDA #$80 : STA $2115
	JML $008D04
	
OverrideGM4DMA:
	JML $008D8F
	
NoDMAStatusBar:
	LDA !Overhead : BNE OverrideStatusBarDMA
	STZ $2115
	LDA #$42
	JML $008DB1
	
OverrideStatusBarDMA:
	JML $008DE6
	
NoStatusBarCounters:
	LDA !Overhead : BNE OverrideCounters
	LDA $1493 : ORA $9D
	JML $008E1F
	
OverrideCounters:
	JML $0090D0

;NoStatusBar:
;	LDA !Overhead : BNE OverrideStatusBar
;	LDY #$24
;	LDA $4211
;	JML $808297
;	
;OverrideStatusBar:
;	JML $808297
;
;NoCounters:
;	LDA !Overhead : BNE OverrideCounters
;	LDA $1493 : ORA $9D
;	JML $808E1F
;	
;OverrideCounters:
;	JML $808FF9
	
;NoMarioDMA:
;	LDA !Overhead : CMP #$02 : BNE DoMarioDMA
;	JML $00A38F
	
;DoMarioDMA:
;	REP #$20
;	LDX #$04
;	JML $00A304

NoLookUp:
	PHA
	LDA !Overhead : BNE OverrideLookUp
	; Restore old code.
	PLA
	XBA
	LDA $15 : AND #$08
	JML $00CFCB
	
OverrideLookUp:
	PLA
	XBA
	LDA $15 : AND #$08
	JML $00D002

NoDuck:
	PHA
	LDA !Overhead : BNE OverrideDuck
	; Restore old code.
	PLA
	STA $73 : STZ $13E8
	JML $00D60B
	
OverrideDuck:
	PLA
	JML $00D60B

NoJump:
	LDA !Overhead : BNE OverrideJump
	; Restore old code.
	LDA $16 : ORA $18
	JML $00D61C
	
OverrideJump:
	JML $00D622
	
; Probably related to gravity or something. Who cares about label names. 
NoSpin:
	PHA		; A was in the middle of something so we'd better preserve it.
	LDA !Overhead : BNE OverrideSpin
	; Restore old code.
	PLA
	AND #$FE
	TAX
	LDA $18
	JML $00D63E
	
OverrideSpin:
	PLA		; We don't need this anymore but we have to pull it anyway.
	JML $00D65E
	
NoGravity:
	PHA
	LDA !Overhead : BNE OverrideGravity
	; Restore old code.
	PLA
	CLC : ADC .DATA_00D7A5,y
	JML $00D94C
	
	.DATA_00D7A5:
		db $06,$03,$04,$10,$F4,$01,$03,$04
		db $05,$06
		
OverrideGravity:
	PLA
	LDA #$00
	JML $00D94C
	
; SEVERELY misleading label name. Who cares.
NoPhysics:
	PHA
	LDA !Overhead : BNE OverridePhysics
	; Restore old code.
	PLA
	LDY #$00
	BIT $15
	JML $00D717
	
OverridePhysics:
	PLA
	JML $00D737

NoPush:
	PHA
	SEP #$20
	LDA !Overhead : BNE OverridePush
	; Restore old code.
	REP #$20
	PLA
	CPX #$0A : BCS +
	JML $00E35D
	
OverridePush:
	REP #$20
	PLA
+	JML $00E360
	