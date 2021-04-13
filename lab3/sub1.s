.text
sub1:
.globl sub1

addi sp, sp, -4 # Выделяем пространство для одного регистра
sw ra, 0(sp) # Сохраняем адрес возврата ra на стек

la a0, array 
lw a1, array_lenght
call sub2 # Вызов подпрограммы sub2

lw ra, 0(sp) # Восстанавливаем значение из стека
addi sp, sp, 4 # Освобождаем стек
li a0, 0 # a0 = 0

ret # return
.rodata
array_lenght:
.word 15

.data
array:
.word 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1