	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/7/7.ll"
	.globl	P3
	.type	P3,@function
                                        ; @P3
P3:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -64
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	rdl #SP, 88
	SR5	:=	rdq #SP, 80
	SR6	:=	rdq #SP, 72
			wrq @SR6, #SP, 56
			wrq @SR5, #SP, 48
			wrl @SR4, #SP, 44
complete

LBB0_2:
			jmp LBB0_3
	SR4	:=	rdq #SP, 56
	SR5	:=	rdq #SP, 48
	SR6	:=	rdq T
			wrq @SR4, #SP, 32
			wrq @SR5, #SP, 24
			wrq @SR5, #SP, 16 ; 8-byte Folded Spill
			wrq @SR6, #SP, 8 ; 8-byte Folded Spill
complete

LBB0_3:
			jmp LBB0_4
	SR4	:=	rdq #SP, 16     ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 8      ; 8-byte Folded Reload
	SR6	:=	rdq #SP, 32
	SR7	:=	rdq T
	SR8	:=	rdq #SP, 24
	SR9	:=	addd @SR6, @SR4
	SR4	:=	muld @SR5, @SR9
	SR5	:=	addd @SR4, @SR8
	SR6	:=	muld @SR7, @SR5
			wrq @SR4, #SP, 32
			wrq @SR6, #SP, 24
			wrq @SR6, #SP   ; 8-byte Folded Spill
complete

LBB0_4:
	SR4	:=	rdq #SP         ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 32
	SR6	:=	rdq T2
	SR7	:=	rdl #SP, 44
	SR8	:=	rdl #SP, 64
			jmp @SR8
	SR9	:=	addd @SR5, @SR4
	SR4	:=	divd @SR9, @SR6
			wrq @SR4, @SR7
			setl #SP, #SP, 64
complete

.Lfunc_end0:
	.size	P3, .Lfunc_end0-P3

	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB1_1
			setl #SP, #SP, -80
complete

LBB1_1:
			jmp LBB1_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x3fdfff97
	SR6	:=	getl 0x40000000
	SR7	:=	getl 0x3ff00000
	SR8	:=	getl 0x1
	SR9	:=	exal #SP, 48
	SR10	:=	patch @SR5, 0x2474538f
	SR5	:=	patch @SR6, 0x0
	SR6	:=	patch @SR7, 0x0
			wrl @0, #SP, 76
			wrl @SR4, #SP, 44
			wrq @SR10, T
			wrq @SR5, T2
			wrq @SR6, #SP, 64
			wrq @SR6, #SP, 56
			wrq @SR6, #SP, 48
			wrl @SR8, #SP, 40
			wrq @SR9, #SP, 32 ; 8-byte Folded Spill
complete

LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp P3
	SR4	:=	rdq #SP, 32     ; 8-byte Folded Reload
	SR5	:=	getl LBB1_4
	SR6	:=	rdq #SP, 64
	SR7	:=	rdq #SP, 56
			wrl @SR4, #SP, 24
			wrq @SR7, #SP, 16
			wrq @SR6, #SP, 8
			wrl @SR5, #SP
complete

LBB1_4:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp LBB1_5
complete

LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp LBB1_2
	SR4	:=	rdl #SP, 40
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 40
complete

LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 40
	SR5	:=	rdl #SP, 44
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB1_3
			je @SR6, LBB1_6
complete

LBB1_6:
	SR4	:=	rdl #SP, 76
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 80
			jmp @SR4
			setl #SP, #SP, 80
complete

.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	T,@object               ; @T
	.comm	T,8,8
	.type	T2,@object              ; @T2
	.comm	T2,8,8

