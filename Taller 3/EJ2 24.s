li a0,4228                         #A0 = 4228
li a1,2114                      #A1 = 2114
jal ra, resta                      #PC = ra, salto a resta
fin:                               #00000014
beq zero, zero, fin                # if zero == zero then fin
resta:                             #00000018
addi sp, sp,-4                     #SP = SP - 4
sw ra,0(sp)                        # mem[sp+0] = ra 
sub a0,a0,a1                       # A0 = A0 - A1
beq a0,zero,epilogo                # if A0 == 0 then  epilogo
sigo:                              #00000028
jal ra, resta                      #PC = ra, salto a resta                
epilogo:                           #0000002c
lw ra, 0(sp)                       # ra = mem[sp+0]
addi sp, sp,4                      # sp = sp + 4
ret


# sra a1, a0 , 1
0xfff 0x000