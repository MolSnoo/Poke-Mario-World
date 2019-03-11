nmi_code:
	JSR UploadGraphics
	JSR UploadPalette
	RTS
	
UploadGraphics:
	LDA !DMAFlag : BIT #$01 : BEQ +
	JSR .DMA1
+	LDA !DMAFlag : BIT #$02 : BEQ +
	JSR .DMA2
+	LDA !DMAFlag : BIT #$04 : BEQ +
	JSR .DMA3
+	LDA !DMAFlag : BIT #$08 : BEQ +
	JSR .DMA4
+	LDA !DMAFlag : BIT #$10 : BEQ +
	JSR .DMA5
+	LDA !DMAFlag : BIT #$20 : BEQ +
	JSR .DMA6
+	LDA !DMAFlag : BIT #$40 : BEQ +
	JSR .DMA7
+	LDA !DMAFlag : BIT #$80 : BEQ +
	JSR .DMA8
+	STZ !DMAFlag	
	RTS
	
.DMA1
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest1 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap1 : STA $4302
	LDY !Tilemap1+2 : STY $4304
	LDA !Size1 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA2
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest2 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap2 : STA $4302
	LDY !Tilemap2+2 : STY $4304
	LDA !Size2 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA3
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest3 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap3 : STA $4302
	LDY !Tilemap3+2 : STY $4304
	LDA !Size3 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA4
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest4 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap4 : STA $4302
	LDY !Tilemap4+2 : STY $4304
	LDA !Size4 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA5
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest5 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap5 : STA $4302
	LDY !Tilemap5+2 : STY $4304
	LDA !Size5 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA6
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest6 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap6 : STA $4302
	LDY !Tilemap6+2 : STY $4304
	LDA !Size6 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA7
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest7 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap7 : STA $4302
	LDY !Tilemap7+2 : STY $4304
	LDA !Size7 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
.DMA8
	PHP : REP #$20
	LDY.b #$80 : STY $2115
	LDA !Dest8 : STA $2116
	LDA #$1801 : STA $4300
	LDA !Tilemap8 : STA $4302
	LDY !Tilemap8+2 : STY $4304
	LDA !Size8 : STA $4305
	LDY #$01 : STY $420B
	SEP #$20 : PLP
	RTS
	
UploadPalette:
	LDA $1493 : BNE +
	LDA !PaletteFlag : BEQ +
	REP #$20
	LDY #$00 : STY $2121
	LDA #$2200 : STA $4320
	LDA #$0703 : STA $4322
	LDY.b #$7E : STY $4324
	LDA #$0200 : STA $4325
	LDX #$04 : STX $420B
	SEP #$20	
+	STZ !PaletteFlag
	RTS
