main:
	li	$a1,6
	jal	fact
	li	$v0,10
	syscall
	
fact:	
	addi	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	
	add	$s0,$a1,$0
	li	$t0,1
	beq	$s0,$t0,ONE
	
	addi	$a1,$s0,-1
	
	jal	fact
	
	add	$s1,$v1,$0

	mul	$v1,$s1,$s0
	
	
exit:	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	addi	$sp,$sp,12
	j	$ra
	
ONE:	
	li	$v1,1
	j	exit

