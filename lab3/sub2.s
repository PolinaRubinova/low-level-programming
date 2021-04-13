.text
sub2:
.globl sub2

mv a3, a1 # a3 = a1
li a2, 2 # a2 = 2

sw x0, 0(a0) # array[0] = 0
j loop_1_check # goto loop_1_check

loop_1:
addi a0, a0, 4 # a4 += 4
lw t0, 0(a0) # t0 = array[i]
beqz t0, loop_2_exit # if(t0 == 0) goto loop_2_exit

mv a1, a2 # a1 = a2      
mv t1, a2 # t1 = a2
mv a5, a0 # a5 = a4
    
j loop_2_check  # goto loop_2_check
	
loop_2:    
slli a7, t1, 2 # a7 = t1 << 2 = t1 * 4
add a6, a5, a7 # a6 = a7 + a5 = a5 + t1 * 4
sw x0, 0(a6)   # array[i] = 0

add t1, t1, a2 # t1 += a2
loop_2_check:
bltu t1, a3, loop_2 # if( t1 < a3 ) goto loop_2

loop_2_exit:
addi a2, a2, 1 # a2 += 1
	
loop_1_check:
bgeu a3, a2, loop_1 # if( a2 <= a3 ) goto loop_1

loop_1_exit:
li a0, 1
ecall # Печатаем результат

li a0, 0
ret # return