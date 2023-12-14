	.file	"counter_la_mm.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/course/lab6/lab-wlos_baseline/testbench/counter_la_wlop" "counter_la_mm.c"
	.align	2
	.type	flush_cpu_icache, @function
flush_cpu_icache:
.LFB21:
	.file 1 "../../firmware/system.h"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	flush_cpu_icache, .-flush_cpu_icache
	.align	2
	.type	flush_cpu_dcache, @function
flush_cpu_dcache:
.LFB22:
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	flush_cpu_dcache, .-flush_cpu_dcache
	.align	2
	.type	csr_write_simple, @function
csr_write_simple:
.LFB23:
	.file 2 "../../firmware/hw/common.h"
	.loc 2 33 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 2 34 5
	lw	a5,-24(s0)
	.loc 2 34 32
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 35 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	csr_write_simple, .-csr_write_simple
	.align	2
	.type	user_irq_0_ev_enable_write, @function
user_irq_0_ev_enable_write:
.LFB209:
	.file 3 "../../firmware/csr.h"
	.loc 3 805 59
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 3 806 2
	li	a5,-268406784
	addi	a1,a5,-2028
	lw	a0,-20(s0)
	call	csr_write_simple
	.loc 3 807 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE209:
	.size	user_irq_0_ev_enable_write, .-user_irq_0_ev_enable_write
	.align	2
	.type	user_irq_1_ev_enable_write, @function
user_irq_1_ev_enable_write:
.LFB229:
	.loc 3 898 59
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 3 899 2
	li	a5,-268406784
	addi	a1,a5,20
	lw	a0,-20(s0)
	call	csr_write_simple
	.loc 3 900 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE229:
	.size	user_irq_1_ev_enable_write, .-user_irq_1_ev_enable_write
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB316:
	.file 4 "../../firmware/stub.c"
	.loc 4 19 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 20 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L9
	.loc 4 21 3
	li	a0,13
	call	putchar
.L9:
	.loc 4 22 11
	nop
.L8:
	.loc 4 22 13 discriminator 1
	li	a5,-268410880
	addi	a5,a5,-2044
	lw	a4,0(a5)
	.loc 4 22 60 discriminator 1
	li	a5,1
	beq	a4,a5,.L8
	.loc 4 23 3
	li	a5,-268410880
	addi	a5,a5,-2048
	.loc 4 23 50
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 4 24 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE316:
	.size	putchar, .-putchar
	.align	2
	.globl	print
	.type	print, @function
print:
.LFB317:
	.loc 4 27 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 4 28 8
	j	.L11
.L12:
	.loc 4 29 14
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 29 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	putchar
.L11:
	.loc 4 28 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L12
	.loc 4 30 1
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE317:
	.size	print, .-print
	.align	2
	.type	irq_getmask, @function
irq_getmask:
.LFB320:
	.file 5 "../../firmware/irq_vex.h"
	.loc 5 23 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 5 25 2
 #APP
# 25 "../../firmware/irq_vex.h" 1
	csrr a5, 3008
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 5 26 9
	lw	a5,-20(s0)
	.loc 5 27 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE320:
	.size	irq_getmask, .-irq_getmask
	.align	2
	.type	irq_setmask, @function
irq_setmask:
.LFB321:
	.loc 5 30 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 5 31 2
	lw	a5,-20(s0)
 #APP
# 31 "../../firmware/irq_vex.h" 1
	csrw 3008, a5
# 0 "" 2
	.loc 5 32 1
 #NO_APP
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	irq_setmask, .-irq_setmask
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB323:
	.file 6 "counter_la_mm.c"
	.loc 6 48 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 6 78 10
	li	a5,637534208
	addi	a5,a5,160
	.loc 6 78 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 79 10
	li	a5,637534208
	addi	a5,a5,156
	.loc 6 79 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 80 10
	li	a5,637534208
	addi	a5,a5,152
	.loc 6 80 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 81 10
	li	a5,637534208
	addi	a5,a5,148
	.loc 6 81 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 82 10
	li	a5,637534208
	addi	a5,a5,144
	.loc 6 82 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 83 10
	li	a5,637534208
	addi	a5,a5,140
	.loc 6 83 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 84 10
	li	a5,637534208
	addi	a5,a5,136
	.loc 6 84 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 85 10
	li	a5,637534208
	addi	a5,a5,132
	.loc 6 85 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 86 10
	li	a5,637534208
	addi	a5,a5,128
	.loc 6 86 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 87 10
	li	a5,637534208
	addi	a5,a5,124
	.loc 6 87 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 88 10
	li	a5,637534208
	addi	a5,a5,120
	.loc 6 88 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 89 10
	li	a5,637534208
	addi	a5,a5,116
	.loc 6 89 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 90 10
	li	a5,637534208
	addi	a5,a5,112
	.loc 6 90 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 91 10
	li	a5,637534208
	addi	a5,a5,108
	.loc 6 91 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 92 10
	li	a5,637534208
	addi	a5,a5,104
	.loc 6 92 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 93 10
	li	a5,637534208
	addi	a5,a5,100
	.loc 6 93 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 95 10
	li	a5,637534208
	addi	a5,a5,96
	.loc 6 95 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 96 10
	li	a5,637534208
	addi	a5,a5,92
	.loc 6 96 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 97 10
	li	a5,637534208
	addi	a5,a5,88
	.loc 6 97 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 98 10
	li	a5,637534208
	addi	a5,a5,84
	.loc 6 98 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 99 10
	li	a5,637534208
	addi	a5,a5,80
	.loc 6 99 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 100 10
	li	a5,637534208
	addi	a5,a5,76
	.loc 6 100 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 101 10
	li	a5,637534208
	addi	a5,a5,72
	.loc 6 101 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 102 10
	li	a5,637534208
	addi	a5,a5,68
	.loc 6 102 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 103 10
	li	a5,637534208
	addi	a5,a5,64
	.loc 6 103 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 105 10
	li	a5,637534208
	addi	a5,a5,52
	.loc 6 105 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 106 10
	li	a5,637534208
	addi	a5,a5,48
	.loc 6 106 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 107 10
	li	a5,637534208
	addi	a5,a5,44
	.loc 6 107 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 108 10
	li	a5,637534208
	addi	a5,a5,40
	.loc 6 108 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 109 10
	li	a5,637534208
	addi	a5,a5,36
	.loc 6 109 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 111 4
	li	a5,637534208
	addi	a5,a5,60
	.loc 6 111 37
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 112 4
	li	a5,637534208
	addi	a5,a5,56
	.loc 6 112 37
	li	a4,1026
	sw	a4,0(a5)
	.loc 6 118 3
	li	a5,637534208
	.loc 6 118 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 119 8
	nop
.L17:
	.loc 6 119 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 119 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L17
	.loc 6 123 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 123 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 123 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 123 57
	sw	a5,0(a4)
	.loc 6 124 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 124 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 124 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 124 56
	sw	a5,0(a4)
	.loc 6 125 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 125 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 125 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 125 56
	sw	a5,0(a4)
	.loc 6 126 53
	li	a4,-268423168
	.loc 6 126 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 126 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 126 50
	sw	a5,0(a4)
	.loc 6 129 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 129 92
	li	a5,-1421869056
	sw	a5,0(a4)
	.loc 6 129 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 129 36
	sw	a5,0(a4)
	.loc 6 148 9
	call	irq_getmask
	mv	a5,a0
	.loc 6 148 7
	sw	a5,-20(s0)
	.loc 6 149 7
	lw	a5,-20(s0)
	ori	a5,a5,4
	sw	a5,-20(s0)
	.loc 6 150 7
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	.loc 6 151 2
	lw	a5,-20(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 153 2
	li	a0,1
	call	user_irq_0_ev_enable_write
	.loc 6 154 2
	li	a0,1
	call	user_irq_1_ev_enable_write
	.loc 6 160 8
	call	matmul
	sw	a0,-24(s0)
	.loc 6 161 94
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 161 99
	slli	a3,a5,16
	.loc 6 161 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 161 99
	mv	a5,a3
	.loc 6 161 92
	sw	a5,0(a4)
	.loc 6 161 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 161 36
	sw	a5,0(a4)
	.loc 6 162 99
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 6 162 94
	lw	a5,0(a5)
	.loc 6 162 103
	slli	a3,a5,16
	.loc 6 162 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 162 103
	mv	a5,a3
	.loc 6 162 92
	sw	a5,0(a4)
	.loc 6 162 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 162 36
	sw	a5,0(a4)
	.loc 6 163 99
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 6 163 94
	lw	a5,0(a5)
	.loc 6 163 103
	slli	a3,a5,16
	.loc 6 163 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 163 103
	mv	a5,a3
	.loc 6 163 92
	sw	a5,0(a4)
	.loc 6 163 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 163 36
	sw	a5,0(a4)
	.loc 6 164 99
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 6 164 94
	lw	a5,0(a5)
	.loc 6 164 103
	slli	a3,a5,16
	.loc 6 164 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 164 103
	mv	a5,a3
	.loc 6 164 92
	sw	a5,0(a4)
	.loc 6 164 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 164 36
	sw	a5,0(a4)
	.loc 6 168 99
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 6 168 94
	lw	a5,0(a5)
	.loc 6 168 103
	slli	a3,a5,16
	.loc 6 168 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 168 103
	mv	a5,a3
	.loc 6 168 92
	sw	a5,0(a4)
	.loc 6 168 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 168 36
	sw	a5,0(a4)
	.loc 6 169 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 169 92
	li	a5,-1420754944
	sw	a5,0(a4)
	.loc 6 169 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 169 36
	sw	a5,0(a4)
	.loc 6 172 8
	call	qsort
	sw	a0,-24(s0)
	.loc 6 173 94
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 173 99
	slli	a3,a5,16
	.loc 6 173 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 173 99
	mv	a5,a3
	.loc 6 173 92
	sw	a5,0(a4)
	.loc 6 173 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 173 36
	sw	a5,0(a4)
	.loc 6 174 99
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 6 174 94
	lw	a5,0(a5)
	.loc 6 174 103
	slli	a3,a5,16
	.loc 6 174 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 174 103
	mv	a5,a3
	.loc 6 174 92
	sw	a5,0(a4)
	.loc 6 174 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 174 36
	sw	a5,0(a4)
	.loc 6 175 99
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 6 175 94
	lw	a5,0(a5)
	.loc 6 175 103
	slli	a3,a5,16
	.loc 6 175 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 175 103
	mv	a5,a3
	.loc 6 175 92
	sw	a5,0(a4)
	.loc 6 175 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 175 36
	sw	a5,0(a4)
	.loc 6 176 99
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 6 176 94
	lw	a5,0(a5)
	.loc 6 176 103
	slli	a3,a5,16
	.loc 6 176 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 176 103
	mv	a5,a3
	.loc 6 176 92
	sw	a5,0(a4)
	.loc 6 176 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 176 36
	sw	a5,0(a4)
	.loc 6 177 99
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 6 177 94
	lw	a5,0(a5)
	.loc 6 177 103
	slli	a3,a5,16
	.loc 6 177 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 177 103
	mv	a5,a3
	.loc 6 177 92
	sw	a5,0(a4)
	.loc 6 177 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 177 36
	sw	a5,0(a4)
	.loc 6 178 99
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 6 178 94
	lw	a5,0(a5)
	.loc 6 178 103
	slli	a3,a5,16
	.loc 6 178 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 178 103
	mv	a5,a3
	.loc 6 178 92
	sw	a5,0(a4)
	.loc 6 178 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 178 36
	sw	a5,0(a4)
	.loc 6 179 99
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 6 179 94
	lw	a5,0(a5)
	.loc 6 179 103
	slli	a3,a5,16
	.loc 6 179 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 179 103
	mv	a5,a3
	.loc 6 179 92
	sw	a5,0(a4)
	.loc 6 179 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 179 36
	sw	a5,0(a4)
	.loc 6 180 99
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 6 180 94
	lw	a5,0(a5)
	.loc 6 180 103
	slli	a3,a5,16
	.loc 6 180 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 180 103
	mv	a5,a3
	.loc 6 180 92
	sw	a5,0(a4)
	.loc 6 180 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 180 36
	sw	a5,0(a4)
	.loc 6 181 99
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 6 181 94
	lw	a5,0(a5)
	.loc 6 181 103
	slli	a3,a5,16
	.loc 6 181 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 181 103
	mv	a5,a3
	.loc 6 181 92
	sw	a5,0(a4)
	.loc 6 181 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 181 36
	sw	a5,0(a4)
	.loc 6 182 99
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 6 182 94
	lw	a5,0(a5)
	.loc 6 182 103
	slli	a3,a5,16
	.loc 6 182 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 182 103
	mv	a5,a3
	.loc 6 182 92
	sw	a5,0(a4)
	.loc 6 182 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 182 36
	sw	a5,0(a4)
	.loc 6 186 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 186 92
	li	a5,-1420689408
	sw	a5,0(a4)
	.loc 6 186 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 186 36
	sw	a5,0(a4)
	.loc 6 189 8
	call	fir
	sw	a0,-24(s0)
	.loc 6 190 94
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 6 190 99
	slli	a3,a5,16
	.loc 6 190 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 190 99
	mv	a5,a3
	.loc 6 190 92
	sw	a5,0(a4)
	.loc 6 190 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 190 36
	sw	a5,0(a4)
	.loc 6 191 99
	lw	a5,-24(s0)
	addi	a5,a5,4
	.loc 6 191 94
	lw	a5,0(a5)
	.loc 6 191 103
	slli	a3,a5,16
	.loc 6 191 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 191 103
	mv	a5,a3
	.loc 6 191 92
	sw	a5,0(a4)
	.loc 6 191 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 191 36
	sw	a5,0(a4)
	.loc 6 192 99
	lw	a5,-24(s0)
	addi	a5,a5,8
	.loc 6 192 94
	lw	a5,0(a5)
	.loc 6 192 103
	slli	a3,a5,16
	.loc 6 192 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 192 103
	mv	a5,a3
	.loc 6 192 92
	sw	a5,0(a4)
	.loc 6 192 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 192 36
	sw	a5,0(a4)
	.loc 6 193 99
	lw	a5,-24(s0)
	addi	a5,a5,12
	.loc 6 193 94
	lw	a5,0(a5)
	.loc 6 193 103
	slli	a3,a5,16
	.loc 6 193 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 193 103
	mv	a5,a3
	.loc 6 193 92
	sw	a5,0(a4)
	.loc 6 193 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 193 36
	sw	a5,0(a4)
	.loc 6 194 99
	lw	a5,-24(s0)
	addi	a5,a5,16
	.loc 6 194 94
	lw	a5,0(a5)
	.loc 6 194 103
	slli	a3,a5,16
	.loc 6 194 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 194 103
	mv	a5,a3
	.loc 6 194 92
	sw	a5,0(a4)
	.loc 6 194 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 194 36
	sw	a5,0(a4)
	.loc 6 195 99
	lw	a5,-24(s0)
	addi	a5,a5,20
	.loc 6 195 94
	lw	a5,0(a5)
	.loc 6 195 103
	slli	a3,a5,16
	.loc 6 195 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 195 103
	mv	a5,a3
	.loc 6 195 92
	sw	a5,0(a4)
	.loc 6 195 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 195 36
	sw	a5,0(a4)
	.loc 6 196 99
	lw	a5,-24(s0)
	addi	a5,a5,24
	.loc 6 196 94
	lw	a5,0(a5)
	.loc 6 196 103
	slli	a3,a5,16
	.loc 6 196 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 196 103
	mv	a5,a3
	.loc 6 196 92
	sw	a5,0(a4)
	.loc 6 196 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 196 36
	sw	a5,0(a4)
	.loc 6 197 99
	lw	a5,-24(s0)
	addi	a5,a5,28
	.loc 6 197 94
	lw	a5,0(a5)
	.loc 6 197 103
	slli	a3,a5,16
	.loc 6 197 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 197 103
	mv	a5,a3
	.loc 6 197 92
	sw	a5,0(a4)
	.loc 6 197 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 197 36
	sw	a5,0(a4)
	.loc 6 198 99
	lw	a5,-24(s0)
	addi	a5,a5,32
	.loc 6 198 94
	lw	a5,0(a5)
	.loc 6 198 103
	slli	a3,a5,16
	.loc 6 198 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 198 103
	mv	a5,a3
	.loc 6 198 92
	sw	a5,0(a4)
	.loc 6 198 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 198 36
	sw	a5,0(a4)
	.loc 6 199 99
	lw	a5,-24(s0)
	addi	a5,a5,36
	.loc 6 199 94
	lw	a5,0(a5)
	.loc 6 199 103
	slli	a3,a5,16
	.loc 6 199 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 199 103
	mv	a5,a3
	.loc 6 199 92
	sw	a5,0(a4)
	.loc 6 199 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 199 36
	sw	a5,0(a4)
	.loc 6 201 39
	li	a5,-268423168
	addi	a4,a5,56
	.loc 6 201 92
	li	a5,-1420623872
	sw	a5,0(a4)
	.loc 6 201 3
	li	a4,637534208
	addi	a4,a4,12
	.loc 6 201 36
	sw	a5,0(a4)
	.loc 6 210 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	main, .-main
.Letext0:
	.file 7 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x223
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0xf
	.string	"fir"
	.byte	0x6
	.byte	0x1c
	.byte	0xd
	.4byte	0x8a
	.4byte	0x8a
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	0x6a
	.byte	0x5
	.4byte	.LASF11
	.byte	0x1b
	.4byte	0x8a
	.4byte	0x9f
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1a
	.4byte	0x8a
	.4byte	0xaf
	.byte	0x3
	.byte	0
	.byte	0x10
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0xee
	.byte	0x11
	.string	"j"
	.byte	0x6
	.byte	0x31
	.byte	0x6
	.4byte	0x6a
	.byte	0x6
	.4byte	.LASF13
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.string	"tmp"
	.byte	0x6
	.byte	0x9e
	.byte	0x7
	.4byte	0x8a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0x13
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1d
	.byte	0x2d
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x14
	.4byte	.LASF26
	.byte	0x5
	.byte	0x16
	.byte	0x1c
	.4byte	0x71
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d
	.byte	0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0xf
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1a
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x15f
	.byte	0x2
	.string	"p"
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0x15f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x4
	.4byte	0x16b
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x15
	.4byte	0x164
	.byte	0x8
	.4byte	.LASF16
	.byte	0x12
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.4byte	0x192
	.byte	0x2
	.string	"c"
	.byte	0x4
	.byte	0x12
	.byte	0x13
	.4byte	0x164
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.2byte	0x382
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b4
	.byte	0xa
	.string	"v"
	.2byte	0x382
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.2byte	0x325
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d6
	.byte	0xa
	.string	"v"
	.2byte	0x325
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x2
	.byte	0x20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x206
	.byte	0x2
	.string	"v"
	.byte	0x2
	.byte	0x20
	.byte	0x33
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2
	.string	"a"
	.byte	0x2
	.byte	0x20
	.byte	0x44
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	.LASF22
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x14
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x4
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0x21
	.byte	0x14
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0x21
	.byte	0x38
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x25
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"flush_cpu_dcache"
.LASF20:
	.string	"csr_write_simple"
.LASF18:
	.string	"user_irq_1_ev_enable_write"
.LASF12:
	.string	"matmul"
.LASF11:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF16:
	.string	"putchar"
.LASF23:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF25:
	.string	"main"
.LASF26:
	.string	"irq_getmask"
.LASF17:
	.string	"irq_setmask"
.LASF10:
	.string	"unsigned int"
.LASF19:
	.string	"user_irq_0_ev_enable_write"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"flush_cpu_icache"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"mask"
.LASF15:
	.string	"print"
.LASF3:
	.string	"short int"
.LASF24:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"counter_la_mm.c"
.LASF1:
	.string	"/home/ubuntu/course/lab6/lab-wlos_baseline/testbench/counter_la_wlop"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
