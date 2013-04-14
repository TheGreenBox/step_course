;----------------------------------------------------------------------------------
;	FILE:			PFC_InvRmsSqr.asm
;
;	Description:	Inverse RMS Square Block for PFC algorithm   
;
;	Version: 		3.0
;
;   Target:  		C28x 
;
;--------------------------------------------------------------------------------
;  Copyright Texas Instruments � 2010
;--------------------------------------------------------------------------------
;  Revision History:
;--------------------------------------------------------------------------------
;  Date	  	| Description
;--------------------------------------------------------------------------------
;  	| Release 3.0  		(MB)
;--------------------------------------------------------------------------------
;=============================
PFC_InvRmsSqr_INIT	.macro	n
;=============================

; variable declarations
_PFC_InvRmsSqr_In:n:				.usect "PFC_InvRmsSqr_Section",2,1,1	; input terminal
_PFC_InvRmsSqr_Out:n: 				.usect "PFC_InvRmsSqr_Section",2,1,1	; output terminal
_PFC_InvRmsSqr_VminOverVmax:n:		.usect "PFC_InvRmsSqr_Section",2,1,1
_PFC_InvRmsSqr_Vmin:n:				.usect "PFC_InvRmsSqr_Section",2,1,1		
_PFC_InvRmsSqr_tempdata:n:			.usect "PFC_InvRmsSqr_Section",2,1,1

;Publish Terminal Pointers for access from the C environment
;===========================================================
		.def 	_PFC_InvRmsSqr_In:n:
		.def	_PFC_InvRmsSqr_Out:n:
		.def	_PFC_InvRmsSqr_VminOverVmax:n:
		.def 	_PFC_InvRmsSqr_Vmin:n:
		.def	_PFC_InvRmsSqr_tempdata:n:

; set terminal pointer to ZeroNet
		MOVL	XAR2, #ZeroNet
		MOVW	DP, #_PFC_InvRmsSqr_In:n:
		MOVL	@_PFC_InvRmsSqr_In:n:, XAR2
		MOVL	@_PFC_InvRmsSqr_Out:n:, XAR2
; intialize any internal data to zero
		ZAPA
		MOVL	@_PFC_InvRmsSqr_Vmin:n:,ACC
		MOVL	@_PFC_InvRmsSqr_tempdata:n:,ACC
		MOVL	@_PFC_InvRmsSqr_VminOverVmax:n:,ACC
		
		.endm

;-------------------------------------------------------------------------------------------
;=============================
PFC_InvRmsSqr .macro	n
;=============================
	   MOVW		DP, #_PFC_InvRmsSqr_In:n:
	   MOVL 	XAR0,@_PFC_InvRmsSqr_In:n:				; Net pointer to In (XAR0)
	   MOVL 	XAR1,@_PFC_InvRmsSqr_Out:n:			; Net pointer to Out (XAR1)
	   MOVL		XAR2,@_PFC_InvRmsSqr_Vmin:n:			; XAR2 = Vmin
	   
	; Clamp the minimum Average AC Line to allow the normalization to work		
		MOVL	ACC,*XAR0							; ACC = "In"
		SUBL	@XAR2,ACC							; XAR2= Vmin - In
		B		LINE_INRANGE:n:,LT					; if Vmin < In branch to LINE_INRANGE
		MOVL	ACC,@_PFC_InvRmsSqr_Vmin:n:			; otherwise put Vmin in ACC
							
LINE_INRANGE:n::				

		SFR		ACC,#2								; shift the ACC left by 2 to make it Q22
		MOVL	@XAR2,ACC							; store the denominator in XAR2 temporarily
		
		MOV		AL,#0xFFFF
		MOV		AH,#0x7FFF
		MOVL 	P,ACC 								; Load P register with Num32 _IQ31(1.0)
		
	; Calculate 1/In --> do divide
	; Numerator of 1/period is treated as a Q31 value divided by Q22 (Q31/Q22) =Q9, result of this
	
		MOVB ACC,#0 								; Zero ACC
		RPT #31 									; Repeat operation 32 times
		||SUBCUL ACC,@XAR2 							; Conditional subtract with Den32
		MOVL	ACC,@P								; move quotient to ACC register
		LSL		ACC,#15								; shift quotient in Q9 by 15 to get Q24
									
	; Renormalize the Inverse Avg AC Line measurement to it's own max by multiplying by Vmin/Vmax
		MOVL	XT,ACC								; Store quotient in Multiplier Register 	
		QMPYL 	ACC,XT,@_PFC_InvRmsSqr_VminOverVmax:n:	; Multiply Inverse of In value by Vmin/Vmax, Q24*Q30 = I10Q22
		LSL		ACC,#8								; ACC=I2Q30

	; Now Square (1/In)^2		
		MOVL	@XAR2,ACC							; inv_avgAC now has Q30 result
		MOVL	XT,ACC
		QMPYL	ACC,XT,@XAR2						; square inv_avgAC, ACC has Q30xQ30 = Q28
		SFR		ACC,#4								; shift right to make it Q24
		
	; saturate the result max to 1.0 Q24				
		MOV		@AR0,#0x00FF
		MIN		AH,@AR0
		
	;store the result in output pointer location
		MOVL	*XAR1,ACC

		.endm

; end of file

