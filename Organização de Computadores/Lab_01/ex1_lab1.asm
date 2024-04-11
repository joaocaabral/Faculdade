.data
	A: 	.word 1
	B: 	.word 1
	C: 	.word 1
	D: 	.word 50
	E: 	.word 1
.text
	
	lw	$t0, A
	lw	$t1, B
	lw	$s0, C
	lw	$t3, D
	lw	$t4, E
	
	addi	$t0, $t1, 35 # a = b + 35 --> a = 1 + 35 --> 36
	add	$t3, $t3, $t4 # d = d + e --> d = 50 + 1 --> 51
	sub	$t2, $t3, $t0 # c = d - a --> c = 51 - 36 --> 15
	
	sw	$s0, C
