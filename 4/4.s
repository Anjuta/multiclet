	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/4/4.ll"
	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -16
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x1
			wrl @0, #SP, 12
			wrl @SR4, #SP
			wrl @SR5, #SP, 8
			wrl @SR5, #SP, 4
complete

LBB0_12:                                ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_2
	SR4	:=	rdl #SP, 4
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 4
complete

LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 4
	SR5	:=	rdl #SP
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB0_3
			je @SR6, LBB0_13
complete

LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
	SR4	:=	rdl #SP, 8
	SR5	:=	xorl @SR4, 0x1
			je @SR5, LBB0_4
			jne @SR5, LBB0_5
complete

LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_6
	SR4	:=	getl 0x2
			wrl @SR4, #SP, 8
complete

LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_6
	SR4	:=	getl 0x3
			wrl @SR4, #SP, 8
complete

LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	SR4	:=	rdl #SP, 8
	SR5	:=	ltsl @SR4, 0x3
			je @SR5, LBB0_7
			jne @SR5, LBB0_8
complete

LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_9
			wrl @0, #SP, 8
complete

LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_9
	SR4	:=	getl 0x1
			wrl @SR4, #SP, 8
complete

LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	SR4	:=	rdl #SP, 8
	SR5	:=	ltsl @SR4, 0x1
			jne @SR5, LBB0_10
			je @SR5, LBB0_11
complete

LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_12
			wrl @0, #SP, 8
complete

LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_12
	SR4	:=	getl 0x1
			wrl @SR4, #SP, 8
complete

LBB0_13:
	SR4	:=	getl 0x0
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 16
			jmp @SR4
			setl #SP, #SP, 16
complete

.Lfunc_end0:
	.size	main, .Lfunc_end0-main


