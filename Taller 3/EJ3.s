
main:
addi a1 zero 4            # a1 = 4
lw a2 0(a1)               # a2 = mem[a1+0] 
addi a3 zero 4            # a3 = 4
lw a3 0(a3)               # a3 = mem[a3+0]
lw a3 0(a3)               # a3 = mem[a3+0]
beq a2 a3 main            # if a2 == a3 then main
guardar:
lui a4 0xffaf6            # a4 = 0xffaf
addi a4 a4 -1539          # a4 = a4 + (-1539)
add a2 a4 a2              # a2 = a4 + a2
sw a1 40(a2)              # mem[a2+40] = a1
fin:
addi a0 zero 0            #a0 = 0
addi a7 zero 93           #a7 = 93
ecall    

