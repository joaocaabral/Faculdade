.data
	matriz: .word 0:255

.text
	la 	$s0 matriz
	li	$t0, 0
	li	$t1, 0
	li	$t2, -4
	
	troca_coluna:
		addi	$t2, $t2, 4
		li	$t1, 0
		la	$s0, matriz
		add	$s0, $s0, $t2
	
	loop:
		beq	$t0, 256, exit
		beq	$t1, 16, troca_coluna
		sw	$t0, 0($s0)
		addi	$s0, $s0, 64
		addi	$t1, $t1, 1
		addi	$t0, $t0, 1
		j 	loop
		
	exit: