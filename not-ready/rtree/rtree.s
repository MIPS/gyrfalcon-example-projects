	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"rtree.c"
	.globl	radix_tree_create               # -- Begin function radix_tree_create
	.p2align	1
	.type	radix_tree_create,@function
radix_tree_create:                      # @radix_tree_create
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	sd	s1, 72(sp)                      # 8-byte Folded Spill
	sd	s2, 64(sp)                      # 8-byte Folded Spill
	sd	s3, 56(sp)                      # 8-byte Folded Spill
	sd	s4, 48(sp)                      # 8-byte Folded Spill
	sd	s5, 40(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	csrr	a1, vlenb
	slli	a1, a1, 1
	sub	sp, sp, a1
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xe0, 0x00, 0x22, 0x11, 0x02, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 96 + 2 * vlenb
	mv	s1, a0
	li	a0, 32
	call	malloc
	beqz	a0, .LBB0_11
# %bb.1:
	mv	s2, a0
	addi	a1, a0, 8
	addi	a0, a0, 16
	sd	zero, 24(s2)
	vsetivli	zero, 2, e64, m1, ta, ma
	vmv.v.i	v8, 0
	addi	a2, sp, 32
	vs1r.v	v8, (a2)                        # Unknown-size Folded Spill
	vse64.v	v8, (a1)
	lui	a1, 1
	lui	a2, 1
	lui	s3, 1
	call	posix_memalign
	ld	s0, 16(s2)
	addi	a0, s0, 32
	sd	a0, 16(s2)
	addiw	s3, s3, -32
	sd	s3, 24(s2)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.L.str)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	mv	a1, s0
	call	printf
	sd	s0, 0(s2)
	beqz	s0, .LBB0_11
# %bb.2:
	sd	zero, 16(s0)
	vsetivli	zero, 2, e64, m1, ta, ma
	addi	a0, sp, 32
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	vse64.v	v8, (s0)
	li	a0, -1
	sd	a0, 24(s0)
	beqz	s1, .LBB0_12
# %bb.3:
	bne	s1, a0, .LBB0_5
# %bb.4:
	li	a0, 5
	j	.LBB0_6
.LBB0_5:
	addi	a0, s1, -1
.LBB0_6:
	li	s4, 0
	lui	s3, 524288
	lui	s1, 524288
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	li	s0, 0
	mv	s5, a0
	srli	a0, s4, 1
	or	s4, a0, s3
.LBB0_8:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	li	a3, -1
	mv	a0, s2
	mv	a1, s0
	mv	a2, s4
	call	radix32tree_insert
	bnez	a0, .LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	addw	s0, s0, s1
	bnez	s0, .LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	srliw	s1, s1, 1
	addi	a0, s5, -1
	bnez	s5, .LBB0_7
	j	.LBB0_12
.LBB0_11:
	li	s2, 0
.LBB0_12:
	mv	a0, s2
	csrr	a1, vlenb
	slli	a1, a1, 1
	add	sp, sp, a1
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	ld	s1, 72(sp)                      # 8-byte Folded Reload
	ld	s2, 64(sp)                      # 8-byte Folded Reload
	ld	s3, 56(sp)                      # 8-byte Folded Reload
	ld	s4, 48(sp)                      # 8-byte Folded Reload
	ld	s5, 40(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	radix_tree_create, .Lfunc_end0-radix_tree_create
	.cfi_endproc
                                        # -- End function
	.globl	radix32tree_insert              # -- Begin function radix32tree_insert
	.p2align	1
	.type	radix32tree_insert,@function
radix32tree_insert:                     # @radix32tree_insert
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	sd	s1, 88(sp)                      # 8-byte Folded Spill
	sd	s2, 80(sp)                      # 8-byte Folded Spill
	sd	s3, 72(sp)                      # 8-byte Folded Spill
	sd	s4, 64(sp)                      # 8-byte Folded Spill
	sd	s5, 56(sp)                      # 8-byte Folded Spill
	sd	s6, 48(sp)                      # 8-byte Folded Spill
	sd	s7, 40(sp)                      # 8-byte Folded Spill
	sd	s8, 32(sp)                      # 8-byte Folded Spill
	sd	s9, 24(sp)                      # 8-byte Folded Spill
	sd	s10, 16(sp)                     # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	csrr	a4, vlenb
	slli	a4, a4, 1
	sub	sp, sp, a4
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0xf0, 0x00, 0x22, 0x11, 0x02, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22 # sp + 112 + 2 * vlenb
	mv	s7, a0
	ld	a4, 0(a0)
	mv	s2, a3
	mv	s6, a2
	mv	s3, a1
	bltz	a2, .LBB1_10
# %bb.1:
	bnez	a4, .LBB1_13
# %bb.2:
	li	s8, 0
	lui	s1, 524288
.LBB1_3:
	and	a0, s1, s6
	beqz	a0, .LBB1_15
# %bb.4:
	addi	s4, s7, 16
	lui	s9, 1
	addiw	s9, s9, -32
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.L.str)
	addi	s5, a0, %pcrel_lo(.Lpcrel_hi1)
	vsetivli	zero, 2, e64, m1, ta, ma
	vmv.v.i	v8, 0
	li	s10, -1
	addi	a0, sp, 16
	vs1r.v	v8, (a0)                        # Unknown-size Folded Spill
	j	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	ld	a0, 0(s0)
	sd	a0, 8(s7)
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	vsetivli	zero, 2, e64, m1, ta, ma
	vse64.v	v8, (s0)
	sd	s8, 16(s0)
	sd	s10, 24(s0)
	and	a0, s1, s3
	seqz	a0, a0
	slli	a0, a0, 3
	add	a0, a0, s8
	srliw	s1, s1, 1
	and	a1, s1, s6
	sd	s0, 0(a0)
	mv	s8, s0
	beqz	a1, .LBB1_16
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	ld	s0, 8(s7)
	bnez	s0, .LBB1_5
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	lui	a1, 1
	lui	a2, 1
	mv	a0, s4
	call	posix_memalign
	ld	s0, 16(s7)
	addi	a0, s0, 32
	sd	a0, 16(s7)
	sd	s9, 24(s7)
	mv	a0, s5
	mv	a1, s0
	call	printf
	addi	a0, sp, 16
	vl1r.v	v8, (a0)                        # Unknown-size Folded Reload
	bnez	s0, .LBB1_6
# %bb.9:
	li	a0, -1
	j	.LBB1_18
.LBB1_10:
	lui	s1, 524288
	mv	s8, a4
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	and	a0, s1, s3
	seqz	a0, a0
	slli	a0, a0, 3
	add	a0, a0, s8
	ld	a4, 0(a0)
	beqz	a4, .LBB1_3
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	srliw	s1, s1, 1
	and	a0, s1, s6
	mv	s8, a4
	bnez	a0, .LBB1_11
.LBB1_13:
	ld	a1, 24(a4)
	li	a2, -1
	li	a0, -3
	bne	a1, a2, .LBB1_18
# %bb.14:
	addi	a4, a4, 24
	j	.LBB1_17
.LBB1_15:
	mv	s0, s8
.LBB1_16:
	addi	a4, s0, 24
.LBB1_17:
	li	a0, 0
	sd	s2, 0(a4)
.LBB1_18:
	csrr	a1, vlenb
	slli	a1, a1, 1
	add	sp, sp, a1
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	ld	s1, 88(sp)                      # 8-byte Folded Reload
	ld	s2, 80(sp)                      # 8-byte Folded Reload
	ld	s3, 72(sp)                      # 8-byte Folded Reload
	ld	s4, 64(sp)                      # 8-byte Folded Reload
	ld	s5, 56(sp)                      # 8-byte Folded Reload
	ld	s6, 48(sp)                      # 8-byte Folded Reload
	ld	s7, 40(sp)                      # 8-byte Folded Reload
	ld	s8, 32(sp)                      # 8-byte Folded Reload
	ld	s9, 24(sp)                      # 8-byte Folded Reload
	ld	s10, 16(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end1:
	.size	radix32tree_insert, .Lfunc_end1-radix32tree_insert
	.cfi_endproc
                                        # -- End function
	.globl	radix32tree_delete              # -- Begin function radix32tree_delete
	.p2align	1
	.type	radix32tree_delete,@function
radix32tree_delete:                     # @radix32tree_delete
	.cfi_startproc
# %bb.0:
	ld	a3, 0(a0)
	beqz	a3, .LBB2_5
# %bb.1:
	bgez	a2, .LBB2_5
# %bb.2:
	lui	a4, 524288
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	and	a5, a4, a1
	seqz	a5, a5
	slli	a5, a5, 3
	add	a3, a3, a5
	ld	a3, 0(a3)
	beqz	a3, .LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	srliw	a4, a4, 1
	and	a5, a4, a2
	bnez	a5, .LBB2_3
.LBB2_5:
	beqz	a3, .LBB2_11
# %bb.6:
	ld	a1, 0(a3)
	bnez	a1, .LBB2_8
# %bb.7:
	ld	a1, 8(a3)
	beqz	a1, .LBB2_12
.LBB2_8:
	ld	a1, 24(a3)
	li	a0, -1
	beq	a1, a0, .LBB2_10
# %bb.9:
	li	a0, 0
	li	a1, -1
	sd	a1, 24(a3)
.LBB2_10:
	ret
.LBB2_11:
	li	a0, -1
	ret
.LBB2_12:
	ld	a4, 8(a0)
	ld	a5, 16(a3)
	li	a1, -1
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	mv	a2, a3
	mv	a3, a5
	ld	a5, 0(a5)
	xor	a5, a5, a2
	snez	a5, a5
	slli	a5, a5, 3
	add	a5, a5, a3
	sd	zero, 0(a5)
	sd	a4, 0(a2)
	ld	a4, 0(a3)
	bnez	a4, .LBB2_17
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	ld	a4, 8(a3)
	bnez	a4, .LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_13 Depth=1
	ld	a4, 24(a3)
	bne	a4, a1, .LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_13 Depth=1
	ld	a5, 16(a3)
	mv	a4, a2
	bnez	a5, .LBB2_13
.LBB2_17:
	sd	a2, 8(a0)
	li	a0, 0
	ret
.Lfunc_end2:
	.size	radix32tree_delete, .Lfunc_end2-radix32tree_delete
	.cfi_endproc
                                        # -- End function
	.globl	radix32tree_find                # -- Begin function radix32tree_find
	.p2align	1
	.type	radix32tree_find,@function
radix32tree_find:                       # @radix32tree_find
	.cfi_startproc
# %bb.0:
	ld	a2, 0(a0)
	beqz	a2, .LBB3_5
# %bb.1:
	lui	a3, 524288
	li	a4, -1
	li	a0, -1
	j	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_3 Depth=1
	and	a5, a3, a1
	seqz	a5, a5
	slli	a5, a5, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	srliw	a3, a3, 1
	beqz	a2, .LBB3_6
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	ld	a5, 24(a2)
	beq	a5, a4, .LBB3_2
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	mv	a0, a5
	j	.LBB3_2
.LBB3_5:
	li	a0, -1
.LBB3_6:
	ret
.Lfunc_end3:
	.size	radix32tree_find, .Lfunc_end3-radix32tree_find
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Returning %p \n"
	.size	.L.str, 15

	.ident	"clang version 19.0.0git (https://github.com/MIPS/llvm.git b4a0fd40f1b94eac571d29ee7695b492934d9bfc)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
