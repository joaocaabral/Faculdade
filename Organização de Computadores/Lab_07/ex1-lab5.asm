.data
	matriz: .word 0:255

.text
	la 	$s0 matriz
	li	$t0, 0
	li	$t1, 0
	li	$t2, 16
		
	loop_row:
		beq	$t0, $t2, loop_col
		sw	$t0, 0($s0)
		addi	$s0, $s0, 4
		addi	$t0, $t0, 1
		j 	loop_row
		
	loop_col:
		addi	$t1, $t1, 1
		addi	$t2, $t2, 16
		bne 	$t1, 16, loop_row	
		j	exit
		
	exit: