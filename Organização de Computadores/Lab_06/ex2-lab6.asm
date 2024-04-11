.data
	n:		.word 0
	resultado:	.word 0
	input:		.asciiz	"Número a ser calculado: "
	output:		.asciiz	"O resultado é: "

.text
.globl main
main:
	la	$s0,n
	la	$s1,resultado
	la	$s2,output
	
	#Pede e le o número
	li	$v0,4
	la	$a0, input
	syscall
	
	li	$v0,5
	syscall
	sw	$v0,($s0)
	
	#Vai para o cálculo
	lw	$a0,($s0)
	jal	fatorial
	
	move	$t0,$v0
	sw	$t0,($s1)
	
	#Imprime a mensagem e o resultado
	li	$v0,4
	la	$a0,($s2)
	syscall
	
	lw	$a0,($s1)
	li	$v0,1
	syscall
	
	j	end

fatorial:
	#Salvamento do endereço de retorno na pilha
	sub	$sp,$sp,4
	sw	$ra,0($sp)
	
	#Se n for 0 ou 1, retorne 1
	li	$t1,1
    	beqz	$a0,resultado_fatorial
    	beq	$a0,$t1,resultado_fatorial
	
	addi	$a0,$a0,-1
	mul	$v0,$a0,$v0
	move	$t2,$v0
	jal	fatorial
	
	#Salvamento do endereço de retorno na pilha
	lw	$ra,0($sp)
	addi	$sp,$sp,4
	
	resultado_fatorial:
		move	$v0,$t2
		jr	$ra
		
end:
	li	$v0,10
	syscall