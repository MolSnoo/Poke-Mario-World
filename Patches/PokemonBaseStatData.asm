;======================================================
; POKEMON BASE STATS
;------------------------------------------------------
; Offset			Contents					Size
;------------------------------------------------------
; 0x00				Pokedex number				1 byte
; 0x01				Base HP						1 byte
; 0x02				Base Attack					1 byte
; 0x03				Base Defense				1 byte
; 0x04				Base Speed					1 byte
; 0x05				Base Special				1 byte
; 0x06				Type 1						1 byte
; 0x07				Type 2						1 byte
; 0x08				Catch rate					1 byte
; 0x09				Base Exp Yield				1 byte
; 0x0A				Dimensions of frontsprite	1 byte
; 0x0B				Pointer to frontsprite		2 bytes
; 0x0D				Pointer to backsprite		2 bytes
; 0x0F				Attacks known at lv. 1		4 bytes
; 0x13				Growth rate					1 byte
; 0x14				TM and HM flags				7 bytes
; 0x1B				Pointer to name				2 bytes
; 0x1C				Padding						3 bytes
;======================================================

;   00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F
db $01,$2D,$31,$31,$2D,$41,$16,$03,$2D,$40,$55,$00,$00,$00,$00,$21		;\ Bulbasaur
db $2D,$00,$00,$03,$A4,$03,$38,$C0,$03,$08,$06,$00,$00,$00,$00,$00		;/

db $02,$3C,$3E,$3F,$3C,$50,$16,$03,$2D,$8D,$66,$90,$01,$10,$03,$21		;\ Ivysaur
db $2D,$49,$00,$03,$A4,$03,$38,$C0,$03,$08,$06,$14,$00,$00,$00,$00		;/

db $03,$50,$52,$53,$50,$64,$16,$03,$2D,$D0,$77,$D0,$03,$20,$06,$21		;\ Venusaur
db $2D,$49,$16,$03,$A4,$43,$38,$C0,$03,$08,$06,$28,$00,$00,$00,$00		;/

db $04,$27,$34,$2B,$41,$32,$14,$14,$2D,$41,$55,$E0,$06,$30,$09,$0A		;\ Charmander
db $2D,$00,$00,$03,$B5,$03,$4F,$C8,$E3,$08,$26,$3C,$00,$00,$00,$00		;/

db $05,$3A,$40,$3A,$50,$41,$14,$14,$2D,$8E,$66,$70,$08,$40,$0C,$0A		;\ Charmeleon
db $2D,$34,$00,$03,$B5,$03,$4F,$C8,$E3,$08,$26,$50,$00,$00,$00,$00		;/

db $06,$4E,$54,$4E,$64,$55,$14,$02,$2D,$D1,$77,$B0,$0A,$50,$0F,$0A		;\ Charizard
db $2D,$34,$2B,$03,$B5,$43,$4F,$CE,$E3,$08,$26,$64,$00,$00,$00,$00		;/

db $07,$2C,$30,$41,$2B,$32,$15,$15,$2D,$42,$55,$C0,$0D,$60,$12,$21		;\ Squirtle
db $27,$00,$00,$03,$B1,$3F,$0F,$C8,$83,$08,$32,$78,$00,$00,$00,$00		;/

db $08,$3B,$3F,$50,$3A,$41,$15,$15,$2D,$8F,$66,$50,$0F,$70,$15,$21		;\ Wartortle
db $27,$91,$00,$03,$B1,$3F,$0F,$C8,$83,$08,$32,$8C,$00,$00,$00,$00		;/

db $09,$4F,$53,$64,$4E,$55,$15,$15,$2D,$D2,$77,$90,$11,$80,$18,$21		;\ Blastoise
db $27,$91,$37,$03,$B1,$7F,$0F,$CE,$83,$08,$32,$A0,$00,$00,$00,$00		;/
