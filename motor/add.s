	.file	"add.c"
	.option nopic
	.text
	.align	2
	.globl	test1
	.type	test1, @function
test1:
	fadd.s	fa0,fa0,fa1
	ret
	.size	test1, .-test1
	.align	2
	.globl	test2
	.type	test2, @function
test2:
	fadd.d	fa0,fa0,fa1
	ret
	.size	test2, .-test2
	.ident	"GCC: (MIPS GNU Tools v1.07 for RISC-V Linux) 10.1.0"
	.section	.note.GNU-stack,"",@progbits
