	.file	"lab4C.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	lab4C
	.type	lab4C, @function
lab4C:
	li	a5,1
	ble	a1,a5,.L1
	addi	a2,a0,4
	li	a3,1
	li	t1,4
	sub	t1,t1,a0
	j	.L5
.L3:
	addiw	a3,a3,1
	addi	a2,a2,4
	beq	a1,a3,.L1
.L5:
	lw	a5,0(a2)
	beq	a5,zero,.L3
	addiw	a5,a3,1
	sext.w	a6,a5
	sw	a5,0(a0)
	ble	a1,a3,.L3
	add	a7,t1,a2
	mv	a4,a2
	mv	a5,a3
.L4:
	sw	zero,0(a4)
	addw	a5,a5,a6
	add	a4,a4,a7
	bgt	a1,a5,.L4
	j	.L3
.L1:
	ret
	.size	lab4C, .-lab4C
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
