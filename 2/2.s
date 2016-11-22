	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/2/2.ll"
	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -72
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x3fdfff97
	SR6	:=	getl 0x3ff00000
	SR7	:=	getl 0xbff00000
	SR8	:=	getl 0x1
	SR9	:=	patch @SR5, 0x2474538f
	SR5	:=	patch @SR6, 0x0
	SR6	:=	patch @SR7, 0x0
			wrl @0, #SP, 68
			wrl @SR4, #SP, 8
			wrq @SR9, #SP, 56
			wrq @SR5, #SP, 24
			wrq @SR6, #SP, 32
			wrq @SR6, #SP, 40
			wrq @SR6, #SP, 48
			wrl @SR8, #SP, 12
complete

LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_4
	SR4	:=	rdq #SP, 24
	SR5	:=	rdq #SP, 32
	SR6	:=	rdq #SP, 40
	SR7	:=	rdq #SP, 48
	SR8	:=	rdq #SP, 56
	SR9	:=	rdq #SP, 32
	SR10	:=	rdq #SP, 40
	SR11	:=	rdq #SP, 48
	SR12	:=	rdq #SP, 56
	SR13	:=	addd @SR4, @SR5
	SR4	:=	addd @SR13, @SR6
	SR5	:=	subd @SR4, @SR7
	SR4	:=	muld @SR5, @SR8
	SR5	:=	addd @SR4, @SR9
	SR6	:=	subd @SR5, @SR10
	SR5	:=	addd @SR6, @SR11
	SR6	:=	muld @SR5, @SR12
			wrq @SR4, #SP, 24
			wrq @SR6, #SP, 32
			wrq @SR6, #SP   ; 8-byte Folded Spill
complete

LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_5
	SR4	:=	rdq #SP         ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 24
	SR6	:=	rdq #SP, 40
	SR7	:=	rdq #SP, 48
	SR8	:=	rdq #SP, 56
	SR9	:=	rdq #SP, 24
	SR10	:=	rdq #SP, 32
	SR11	:=	rdq #SP, 48
	SR12	:=	rdq #SP, 56
	SR13	:=	subd @SR5, @SR4
	SR4	:=	subd @SR10, @SR9
	SR5	:=	addd @SR13, @SR6
	SR6	:=	addd @SR5, @SR7
	SR5	:=	muld @SR6, @SR8
	SR6	:=	addd @SR4, @SR5
	SR4	:=	addd @SR6, @SR11
	SR6	:=	muld @SR4, @SR12
			wrq @SR5, #SP, 40
			wrq @SR6, #SP, 48
complete

LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_2
	SR4	:=	rdl #SP, 12
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 12
complete

LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 12
	SR5	:=	rdl #SP, 8
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB0_3
			je @SR6, LBB0_6
complete

LBB0_6:
	SR4	:=	getl 0x0
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 72
			jmp @SR4
			setl #SP, #SP, 72
complete

.Lfunc_end0:
	.size	main, .Lfunc_end0-main


