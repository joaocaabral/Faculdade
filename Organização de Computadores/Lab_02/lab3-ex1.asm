.data
	estimativa: 	.double 1
	x: 		.double 2401
	dois:		.double 2
	repetir: 	.word 0
	
.text
	la		$s0, estimativa
	la		$s1, x
	la		$s2, repetir
	
	li	$v0, 5		# Entrada do numero de loops
	syscall
	
	move	$t0, $v0	# move o numero de loops para $t0
	ldc1	$f0, 0($s2)	# estimativa
	li	$s4, 0		# indice = 0

	la 	$s3, dois
	ldc1	$f6, 0($s3)
	
	ldc1	$f4, 0($s1)
	sqrt.d 	$f8, $f4

	j 	raiz_quadrada

raiz_quadrada:
	ldc1	$f2, 0($s0)	
	ldc1	$f4, 0($s1)	

	beq	$s4, $t0, end 	# verifica se os loops igualaram ao indice
	addi	$s4, $s4, 1	# adiciona 1 ao indice
	
	div.d 	$f4, $f4, $f2	# $f4(x) / $f2(estimativa)
	add.d 	$f4, $f4, $f2	# $f4 + $f2(estimativa)
	div.d 	$f2, $f4, $f6 	# $f4 / %f6(2)
	sdc1  	$f2, 0($s0)
	j     	raiz_quadrada
	
end:
	li $v0, 10
	syscall
