.globl main

.data 
str:
	.string "Sum of 1-100 = "

.text 
main:
	li t0, 0 #i = 0
	li t1, 0 #create sum=0
	li t2, 100 #Upper limit of loop
	
loop:
	beq t0, t2, outsideLoop #Check if i < 100, if not go to done
	addi t0, t0, 1 #Set i to i  
	add t1, t1, t0 #Do, sum = sum + i;
	j loop

outsideLoop: 
	#Print the string
	la a0, str #Get string
	li a7, 4 #PrintString
	ecall
	
	add a0, zero, t1 #Get sum 
	li a7, 1 #PrintInt
	ecall
	
	li a7, 10 #Exit
	ecall
