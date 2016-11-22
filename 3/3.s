	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/3/3.ll"
	.globl	PA
	.type	PA,@function
                                        ; @PA
PA:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -56
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	rdl #SP, 60
			wrl @SR4, #SP, 52
			wrl @0, J
complete

LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
			jmp LBB0_3
	SR4	:=	rdl #SP, 52
	SR5	:=	rdq T
	SR6	:=	rdl #SP, 52
	SR7	:=	addl @SR4, 0x8
	SR8	:=	addl @SR4, 0x10
	SR9	:=	addl @SR4, 0x18
	SR10	:=	addl @SR4, 0x20
	SR4	:=	addl @SR6, 0x8
	SR11	:=	rdq @SR7
	SR12	:=	rdq @SR8
	SR8	:=	rdq @SR9
	SR9	:=	rdq @SR10
	SR10	:=	addd @SR11, @SR12
	SR11	:=	addd @SR10, @SR8
	SR8	:=	subd @SR11, @SR9
	SR9	:=	muld @SR8, @SR5
			wrq @SR9, @SR7
			wrq @SR4, #SP, 40 ; 8-byte Folded Spill
			wrq @SR6, #SP, 32 ; 8-byte Folded Spill
complete

LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_4
	SR4	:=	rdq #SP, 40     ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 32     ; 8-byte Folded Reload
	SR6	:=	rdq T
	SR7	:=	rdl #SP, 52
	SR8	:=	rdq @SR4
	SR4	:=	addl @SR5, 0x10
	SR9	:=	addl @SR5, 0x18
	SR10	:=	addl @SR5, 0x20
	SR5	:=	addl @SR7, 0x8
	SR11	:=	rdq @SR4
	SR12	:=	rdq @SR9
	SR9	:=	rdq @SR10
	SR10	:=	addd @SR8, @SR11
	SR8	:=	subd @SR10, @SR12
	SR10	:=	addd @SR8, @SR9
	SR8	:=	muld @SR10, @SR6
			wrq @SR8, @SR4
			wrq @SR5, #SP, 24 ; 8-byte Folded Spill
			wrq @SR7, #SP, 16 ; 8-byte Folded Spill
complete

LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_5
	SR4	:=	rdq #SP, 24     ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 16     ; 8-byte Folded Reload
	SR6	:=	rdq T
	SR7	:=	rdl #SP, 52
	SR8	:=	rdq @SR4
	SR4	:=	addl @SR5, 0x10
	SR9	:=	addl @SR5, 0x18
	SR10	:=	addl @SR5, 0x20
	SR5	:=	addl @SR7, 0x8
	SR11	:=	rdq @SR4
	SR4	:=	rdq @SR9
	SR12	:=	rdq @SR10
	SR10	:=	subd @SR8, @SR11
	SR8	:=	addd @SR10, @SR4
	SR4	:=	addd @SR8, @SR12
	SR8	:=	muld @SR4, @SR6
			wrq @SR8, @SR9
			wrq @SR5, #SP, 8 ; 8-byte Folded Spill
			wrq @SR7, #SP   ; 8-byte Folded Spill
complete

LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
	SR4	:=	rdq #SP, 8      ; 8-byte Folded Reload
	SR5	:=	rdq #SP         ; 8-byte Folded Reload
	SR6	:=	rdq T2
	SR7	:=	rdl J
	SR8	:=	rdq @SR4
	SR4	:=	addl @SR5, 0x10
	SR9	:=	addl @SR5, 0x18
	SR10	:=	addl @SR5, 0x20
	SR5	:=	addl @SR7, 0x1
	SR7	:=	rdq @SR4
	SR4	:=	rdq @SR9
	SR9	:=	rdq @SR10
	SR11	:=	ltsl @SR5, 0x6
			je @SR11, LBB0_6
			jne @SR11, LBB0_2
	SR12	:=	subd @SR7, @SR8
	SR7	:=	addd @SR12, @SR4
	SR4	:=	addd @SR7, @SR9
	SR7	:=	divd @SR4, @SR6
			wrq @SR7, @SR10
			wrl @SR5, J
complete

LBB0_6:
	SR4	:=	rdl #SP, 56
			jmp @SR4
			setl #SP, #SP, 56
complete

.Lfunc_end0:
	.size	PA, .Lfunc_end0-PA

	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB1_1
			setl #SP, #SP, -72
complete

LBB1_1:
			jmp LBB1_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x3fdfff97
	SR6	:=	getl 0x40000000
	SR7	:=	getl 0x3ff00000
	SR8	:=	getl 0xbff00000
	SR9	:=	getl 0x1
	SR10	:=	exal #SP, 16
	SR11	:=	patch @SR5, 0x2474538f
	SR5	:=	patch @SR6, 0x0
	SR6	:=	patch @SR7, 0x0
	SR7	:=	patch @SR8, 0x0
			wrl @0, #SP, 68
			wrl @SR4, #SP, 60
			wrq @SR11, T
			wrq @SR5, T2
			wrq @SR6, #SP, 24
			wrq @SR7, #SP, 32
			wrq @SR7, #SP, 40
			wrq @SR7, #SP, 48
			wrl @SR9, #SP, 64
			wrq @SR10, #SP, 8 ; 8-byte Folded Spill
complete

LBB1_3:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp PA
	SR4	:=	rdq #SP, 8      ; 8-byte Folded Reload
	SR5	:=	getl LBB1_4
			wrl @SR4, #SP, 4
			wrl @SR5, #SP
complete

LBB1_4:                                 ;   in Loop: Header=BB1_2 Depth=1
			jmp LBB1_2
	SR4	:=	rdl #SP, 64
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 64
complete

LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 64
	SR5	:=	rdl #SP, 60
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB1_3
			je @SR6, LBB1_5
complete

LBB1_5:
	SR4	:=	getl 0x0
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 72
			jmp @SR4
			setl #SP, #SP, 72
complete

.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	J,@object               ; @J
	.comm	J,4,4
	.type	T,@object               ; @T
	.comm	T,8,8
	.type	T2,@object              ; @T2
	.comm	T2,8,8

