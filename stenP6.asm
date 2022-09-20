.data 
arrA: .space 400
arrB: .space 400

.globl main
.text 

main:
	la t0, arrA #int A[100]
	la t1, arrB #int B[100]
	li t2, 0 #int i = 0
	li t3, 100 #Upper bound
	li t4, 0
	li s0, 3
	li s1, 2
	
	
loopOne:
	beq t2, t3, iReset #Conditional check
	addi t2, t2, 1 #increment i
	
	#Create random int
	li a1, 100
	li a7, 42
	add t4, zero, a0 #Save rand int in t4
	
	sw t4, 0(t0) #Store randint in A[i]
	
	ecall
	
	j loopOne #Continue loop
	
iReset:
	li t2, 0
	li t4, 0

loopTwo:
#t5/t6 unused
	beq t2, t3, exitCode #Conditional check
	addi t2, t2, 1 #increment i
	
	#Get A[i]
	lw t5, 0(t0) #load A[i] in t5
	
	#Get A[i - 1]
	lw t6, -4(t0)
	
	#Do A[i] + A[i - 1]
	add t4, t5, t6 
	
	#Get A[i + 1]
	lw t6, 4(t0)
	
	#Do a[i-1] + a[i] + a[i+1]
	add t4, t6, t4 
	
	div t4, t4, s0 #Divide by 3
	
	lw t5, 0(t1) #Get adress od B[i]
	sw t4, 0(t1) #Store total of stencil in B[i]
	
	j loopTwo

exitCode:
	li a7, 10 #Exit
	ecall
	#End Program
