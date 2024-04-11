.data
	A: .word 1
	B: .word 1
	C: .word 1
	D: .word 50
	E: .word 1
.text
	# Da load nas variáveis declaradas 
	lw	$t0, A
	lw	$t1, B
	lw	$s0, C
	lw	$t2, D
	lw	$t3, E
	
	# Aqui, o input do usuário é lido e o valor dele é movido para o B
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	# Primeira parte da conta:
	addi	$t0, $t1, 35	#a = b + 35
	
	# Segunda parte da conta
	add	$t2, $t2, $t3	#d = d + e
	sub	$s0, $t2, $t0	#c = d - a
	
	# Escreve o resultado da conta na tela
	li	$v0	1
	move	$a0	$s0
	syscall
	
	# O resultado da conta é salvo na memória
	sw	$s0, C
