main:
	li	$a1,1
y:
	addi	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	x
	mul	$s0,$s0,$s0
	mul	$s0,$s0,$s0
	addi	$a1,$s0,3
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	j	$ra
	
x:
	addi	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	z
	mul	$t1,$s1,$s1
	mul	$s1,$s1,$t1
	addi	$s0,$s1,2
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	j	$ra
z:
	addi	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	p
	mul	$t1,$s2,$s2
	mul	$t2,$t1,$s2
	add	$s1,$t1,$t2
	addi	$sp,$sp,4
	lw	$ra,0($sp)
	j	$ra
p:	
	addi	$sp,$sp,-4
	sw	$ra,0($sp)
	mul	$s2,$a1,6
	j	$ra
	
		
