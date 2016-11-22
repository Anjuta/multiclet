	.text
	.alias BP IR6
	.alias SP IR7
	.file	"/home/guerre/multiclet/5/5.ll"
	.globl	main
	.type	main,@function
                                        ; @main
main:
; BB#0:
			jmp LBB0_1
			setl #SP, #SP, -112
complete

LBB0_1:
			jmp LBB0_2
	SR4	:=	getl 0x3e8
	SR5	:=	getl 0x1
	SR6	:=	getl 0x2
	SR7	:=	getl 0x3
	SR8	:=	exal #SP, 56
			wrl @0, #SP, 108
			wrl @SR4, #SP, 52
			wrl @SR5, #SP, 104
			wrl @SR6, #SP, 100
			wrl @SR7, #SP, 96
			wrl @SR5, #SP, 48
			wrq @SR8, #SP, 16 ; 8-byte Folded Spill
complete

LBB0_3:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_4
	SR4	:=	rdl #SP, 104
	SR5	:=	rdl #SP, 100
	SR6	:=	rdl #SP, 96
	SR7	:=	rdl #SP, 96
	SR8	:=	rdl #SP, 100
	SR9	:=	rdl #SP, 96
	SR10	:=	subl @SR5, @SR4
	SR11	:=	subl @SR6, @SR5
	SR5	:=	mull @SR7, @SR8
	SR6	:=	mull @SR4, @SR10
	SR4	:=	mull @SR6, @SR11
	SR6	:=	subl @SR7, @SR4
	SR7	:=	mull @SR6, @SR8
	SR6	:=	subl @SR5, @SR7
	SR5	:=	subl @SR9, @SR6
			wrl @SR4, #SP, 104
			wrl @SR6, #SP, 100
			wrq @SR6, #SP, 40 ; 8-byte Folded Spill
			wrq @SR5, #SP, 32 ; 8-byte Folded Spill
complete

LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp __floatsidf
	SR4	:=	rdq #SP, 40     ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 32     ; 8-byte Folded Reload
	SR6	:=	getl LBB0_5
	SR7	:=	rdl #SP, 104
	SR8	:=	rdl #SP, 104
	SR9	:=	rdl #SP, 100
	SR10	:=	addl @SR4, @SR7
	SR4	:=	addl @SR8, @SR9
	SR7	:=	mull @SR5, @SR10
	SR5	:=	addl @SR4, @SR7
			wrl @SR7, #SP, 96
			wrl @SR5, #SP, 4
			wrl @SR6, #SP
			wrq @SR7, #SP, 24 ; 8-byte Folded Spill
complete

LBB0_5:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp __floatsidf
	SR4	:=	rdq #SP, 24     ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 16     ; 8-byte Folded Reload
	SR6	:=	getl LBB0_6
	SR7	:=	getq #GPR7
	SR8	:=	rdl #SP, 104
	SR9	:=	rdl #SP, 100
	SR10	:=	rdl #SP, 96
	SR11	:=	slll @SR4, 0x3
	SR4	:=	mull @SR8, @SR9
	SR8	:=	addl @SR5, @SR11
	SR5	:=	mull @SR4, @SR10
	SR4	:=	addl @SR8, 0xfffffff8
			wrq @SR7, @SR4
			wrl @SR5, #SP, 4
			wrl @SR6, #SP
			wrq @SR9, #SP, 8 ; 8-byte Folded Spill
complete

LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_7
	SR4	:=	rdq #SP, 8      ; 8-byte Folded Reload
	SR5	:=	rdq #SP, 16     ; 8-byte Folded Reload
	SR6	:=	getq #GPR7
	SR7	:=	slll @SR4, 0x3
	SR4	:=	addl @SR5, @SR7
	SR5	:=	addl @SR4, 0xfffffff8
			wrq @SR6, @SR5
complete

LBB0_7:                                 ;   in Loop: Header=BB0_2 Depth=1
			jmp LBB0_2
	SR4	:=	rdl #SP, 48
	SR5	:=	addl @SR4, 0x1
			wrl @SR5, #SP, 48
complete

LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	SR4	:=	rdl #SP, 48
	SR5	:=	rdl #SP, 52
	SR6	:=	gesl @SR5, @SR4
			jne @SR6, LBB0_3
			je @SR6, LBB0_8
complete

LBB0_8:
	SR4	:=	rdl #SP, 108
			setq #GPR7, @SR4
	SR4	:=	rdl #SP, 112
			jmp @SR4
			setl #SP, #SP, 112
complete

.Lfunc_end0:
	.size	main, .Lfunc_end0-main


