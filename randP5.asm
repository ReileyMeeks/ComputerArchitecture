  #int i;
  #int avg = 0;
  #int total = 0;
  #int A[100];
  
  #srand(time(NULL));
  
    #for (i = 0; i < 100; i++) {
        #A[i] = (rand() % 100) + 1;
    #}
  
  #for(i = 0; i < 100; i++) {
     #total = total + A[i];
  #}

   #avg = total / 100;

  #printf("%d\n", avg);
  
  #return avg;

.data 
arr: .space 400

str1: .string "Debug Begin, before div total\n"
str2: .string "-------\n"
str3: .string "Debug End, after div total below\n"


.globl main
.text 




main:
	la t0, arr #Load adress of array A[100]
	li t1, 0 #i = 0
	li t2, 0 #Total = 0
	li t3, 0 #avg = 0
	li t4, 100 #Loop bound + Division avg
	#li t5, 400 #Byte size of array
	
loopA:
	beq t1, t4, outSideLoopA #Conditional check 
	addi t1, t1, 1 #Increment I
	#add t2, t2, t1 #Do,sum = sum + i;
	li a1, 100
	li a7, 42
	add t6, zero, a0
	#mul t0, t1, t5 #Get offset, i * sizeof(int), t0(array) = t1(i) * t5(sizeof(int))
	#lw t5, 0(t0) #Load A[i]
	#addi t0, t6, 0 #Append t6(randint) to A at locaion i
	sw t6, 0(t0) #store randint in A[i]
	ecall
	
	j loopA #Continue loop
	
outSideLoopA:
	li t1, 0
	
loopB:
	beq t1, t4, outSideLoopB #Conditional check
	addi t1, t1, 1 #Increment I
	#mul t0, t1, t5 #Get offset, i * sizeof(int), t0(array) = t1(i) * t5(sizeof(int))
	#add t6, zero, t0
	#add t2, t2, t6
	lw t5, 0(t0) #Load A[i]
	
	add t2, t2, t5 #total = total + A[i]
	
	j loopB #Continue Loop
	
outSideLoopB:
	#Debug 
	la a0, str1 #Get string
	li a7, 4 #PrintString
	ecall
	
	add a0, zero, t2 #Get total before division
	li a7, 1 #PrintInt
	ecall
	
	la a0, str2 #Get string
	li a7, 4 #PrintString
	ecall
	
	la a0, str3 #Get string
	li a7, 4 #PrintString
	ecall
	#Debug
	
	
	div t2, t2, t4 #Divide the total/100
	add a0, zero, t2 #Get Total
	li a7, 1 #PrintInt
	ecall
	
	li a7, 10 #Exit
	ecall
	#End Program
	
	



	
