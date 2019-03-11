macro divide(divendLo,divendHi,divisor)
	LDA <divendLo> : STA $4204
	LDA <divendHi> : STA $4205
	LDA #<divisor> : STA $4206
	JSR Cycles
endmacro

macro multiply(multA,multB)
	LDA <multA> : STA $4202
	LDA <multB> : STA $4203
	JSR Cycles
endmacro

macro StoreMessage(Message)
-	LDA <Message>,y : CMP #$FB : BEQ ?StoreMessageEnd : STA !MessageData,x : INX
	CMP #$FF : BEQ ?StoreMessageEnd
	CMP #$FA : BEQ ?StoreMessageEnd
	CMP #$01 : BEQ + : CMP #$00 : BEQ +
	SEC : SBC #$F9 : BPL +
	LDA #$20 : STA !MessageData,x : INX : + INY
	BRA -
?StoreMessageEnd:
endmacro

macro WriteMessage()
	REP #$20
	LDA #!MessageData : STA !Message
	LDY.b #!MessageData>>16 : STY !Message+2
	LDA #$5282 : STA !TextPosInit : STA !TextPos
	SEP #$20
	STZ !MessageDone
endmacro

macro DrawPokemon(Number,Dest)
	LDA #<Dest> : STA !Dest<Number>
	LDA $00 : STA !Tilemap<Number>
	LDY $02 : STY !Tilemap<Number>+2
	LDY $03 : TYA : STA !Size<Number>
endmacro