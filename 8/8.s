	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/8/8.ll"
	.globl	P0
	.type	P0,@function
                                        ; @P0
P0:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -16
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	rdl K
	SR5	:=	getl E1
	SR6	:=	rdl J
	SR7	:=	rdl L
	SR8	:=	slll @SR4, 0x3
	SR4	:=	slll @SR6, 0x3
	SR6	:=	slll @SR7, 0x3
	SR7	:=	addl @SR8, @SR5
	SR8	:=	addl @SR4, @SR5
	SR4	:=	addl @SR6, @SR5
	SR5	:=	rdq @SR7
			wrq @SR5, @SR8
			wrq @SR4, #SP, 8 ; 8-byte Folded Spill
complete

LBB0_2:
			jmp LBB0_3
	SR4	:=	rdq #SP, 8      ; 8-byte Folded Reload
	SR5	:=	getl E1
	SR6	:=	rdl K
	SR7	:=	rdl J
	SR8	:=	rdq @SR4
	SR4	:=	slll @SR6, 0x3
	SR6	:=	slll @SR7, 0x3
	SR7	:=	addl @SR4, @SR5
	SR4	:=	addl @SR6, @SR5
			wrq @SR8, @SR7
			wrq @SR4, #SP   ; 8-byte Folded Spill
complete

LBB0_3:
	SR4	:=	rdq #SP         ; 8-byte Folded Reload
	SR5	:=	getl E1
	SR6	:=	rdl L
	SR7	:=	rdl #SP, 16
			jmp @SR7
	SR8	:=	rdq @SR4
	SR4	:=	slll @SR6, 0x3
	SR6	:=	addl @SR4, @SR5
			wrq @SR8, @SR6
			setl #SP, #SP, 16
complete

.Lfunc_end0:
	.size	P0, .Lfunc_end0-P0

	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB1_1
			setl #SP, #SP, -24
complete

LBB1_1:
			jmp LBB1_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x1
	SR6	:=	getl 0x2
	SR7	:=	getl 0x3
	SR8	:=	getl 0x3ff00000
	SR9	:=	getl 0x40000000
	SR10	:=	getl 0x40080000
	SR11	:=	patch @SR8, 0x0
	SR8	:=	patch @SR9, 0x0
	SR9	:=	patch @SR10, 0x0
			wrl @0, #SP, 20
			wrl @SR4, #SP, 16
			wrl @SR5, J
			wrl @SR6, K
			wrl @SR7, L
			wrq @SR11, E1+8
			wrq @SR8, E1+16
			wrq @SR9, E1+24
			wrl @SR5, #SP, 12
complete

LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp P0
	SR4	:=	getl LBB1_4
			wrl @SR4, #SP
complete

LBB1_4:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp LBB1_5
complete

LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp LBB1_2
	SR4	:=	rdl #SP, 12
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 12
complete

LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 12
	SR5	:=	rdl #SP, 16
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB1_3
			je @SR6, LBB1_6
complete

LBB1_6:
	SR4	:=	rdl #SP, 20
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 24
			jmp @SR4
			setl #SP, #SP, 24
complete

.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	K,@object               ; @K
	.comm	K,4,4
	.type	E1,@object              ; @E1
	.comm	E1,40,8
	.type	J,@object               ; @J
	.comm	J,4,4
	.type	L,@object               ; @L
	.comm	L,4,4

