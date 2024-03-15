.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE

    # j recursive

    j iterative

recursive:  # para a0, ret_val a1; So comment out the line 12 when use
    beq a0, x0, exit_rec
    addi sp, sp, -8
    sw ra, 4(sp)
    sw a0, 0(sp)
    addi a0, a0, -1
    jal recursive
    lw a0, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
    mul a1, a1, a0
    jr ra
exit_rec:
    li a1, 1
    jr ra

iterative:  # para a1, ret_val a0
    li t1, 2
    blt a0, t1, exit
    addi a1, a0, -1
loop:
    mul a0, a0, a1
    addi a1, a1, -1
    bne a1, x0, loop
exit:
    jr ra
