main:
	li	$a1,3
	li	$s0,3
	jal	fib
	li	$v0,10
	syscall
	
fib:	
	addi	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	add	$s0,$a1,$0
	li	$t0,1
	beq	$s0,$0,ZERO
	beq	$s0,$t0,ONE
	
	addi	$a1,$s0,-1
	jal	fib
	add	$s1,$v1,$0
	addi	$a1,$s0,-2
	jal	fib
	add	$v1,$v1,$s1
	
	
exit:	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	addi	$sp,$sp,12
	j	$ra
	
ONE:	
	li	$v1,1
	j	exit
ZERO:	
	li	$v1,0
	j	exit
