	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/9/9.ll"
	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -32
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x2
	SR6	:=	getl 0x3
	SR7	:=	getl 0x1
			wrl @0, #SP, 28
			wrl @SR4, #SP, 12
			wrl @SR5, #SP, 24
			wrl @SR6, #SP, 20
			wrl @SR7, #SP, 16
complete

LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_4
	SR4	:=	rdl #SP, 24
	SR5	:=	rdl #SP, 20
	SR6	:=	rdl #SP, 20
	SR7	:=	addl @SR4, @SR5
	SR4	:=	addl @SR7, @SR6
			wrl @SR7, #SP, 24
			wrl @SR4, #SP, 20
			wrq @SR4, #SP   ; 8-byte Folded Spill
complete

LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_5
	SR4	:=	rdq #SP         ; 8-byte Folded Reload
	SR5	:=	rdl #SP, 24
	SR6	:=	rdl #SP, 20
	SR7	:=	subl @SR4, @SR5
	SR4	:=	subl @SR6, @SR7
	SR5	:=	subl @SR4, @SR7
			wrl @SR7, #SP, 24
			wrl @SR5, #SP, 20
complete

LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_2
	SR4	:=	rdl #SP, 16
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 16
complete

LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 16
	SR5	:=	rdl #SP, 12
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB0_3
			je @SR6, LBB0_6
complete

LBB0_6:
	SR4	:=	rdl #SP, 28
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 32
			jmp @SR4
			setl #SP, #SP, 32
complete

.Lfunc_end0:
	.size	main, .Lfunc_end0-main


