main:
	li	$a0,4
	li	$a1,8
	jal	multi_fun
	li	$s3,3
	div	$v1,$s3
	mflo	$s2
	li	$s4,5
	add	$s5,$s2,$s4
	li	$v0,10
	syscall
	
multi_fun:
	mul	$v1,$a1,$a0
	j	$ra
	
