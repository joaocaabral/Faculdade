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
	la	$a0,input
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
	move	$t0,$a0
	
	#Se n for 0 ou 1, retorne 1
    	li 	$t1, 1             # $t1 = 1
   	beqz 	$t0, resultado_fatorial
   	beq 	$t0, $t1, resultado_fatorial
	li	$t2,1 #Inicia o resultado com 1
	
	loop_fatorial:
		mult	$t2, $t0		#resultado *= n
		mflo	$t2
		subi	$t0, $t0, 1		#n--
		bgtz	$t0, loop_fatorial	#continua se m>0
		
	resultado_fatorial:
		move	$v0,$t2
		jr	$ra
		
end:
	li	$v0,10
	syscall
