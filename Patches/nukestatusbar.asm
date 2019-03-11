lorom
header

org $8081F4			; JSR $008DAC
	BRA + : NOP : +
	
org $808292			; TODO: actually move the IRQ to NMI maybe?
	LDY #$00
	
org $8082E8			; JSR $008DAC
	BRA + : NOP : +
	
org $808C81			; literally nuke the status bar
	fill 126		; up to $008CFE
	
org $808DF5
	fill 644		; up to $0090D0

org $80985A			; JSR $008CFF
	BRA + : NOP : +
	
org $80A2D5			; JSR $008E1A
	BRA + : NOP : +

org $80A5A8			; JSR $008CFF
	BRA + : NOP : +
	
org $80A5D5			; JSR $008E1A
	BRA + : NOP : +

org $80F5F8			; don't try dropping anything when getting hurt
	BRA + : NOP #2 : +	; uncomment this out if you use the SMB3 powerdown patch

org $81C540			; don't store items ever
	BRA + : NOP #11 : +