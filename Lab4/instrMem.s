.globl main
.text

main:

addi $t0, $zero, 8 #t0 = 8;
nop
nop
nop
nop
nop
add $t1, $zero, $zero #t1 = 0
nop
nop
nop
nop
nop
add $t0, $t1, $t0 #t0 = t1 + t8; $t0 = 8
nop
nop
nop
nop
nop
sw $t1, 0($t0) # Mem[t0] = t1
nop
nop
nop
nop
nop
lw $t2, 4($t1) # t2 = Mem[t1 + 4]
nop
nop
nop
nop
nop
sll $t0, $t0, 2 # t0 = 2 * t0
nop
nop
nop
nop
nop
