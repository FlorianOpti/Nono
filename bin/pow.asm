#Calcul qui calcule 2 puissance i
#Auteurs : Floriant Delavernhe et Thomas Minier, groupe 501A
	.text
	.globl __start
__start:	
	li $t0, 1
	li $t1, 4 # i
	li $t2, 0
	li $t3, 1
while:	beq $t1, $t2, endwhile
	sllv $t0, $t0, $t3
	sub $t1, $t1, $t3
	b while

endwhile:
	li $v0, 10
	syscall