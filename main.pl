# memory locations = 16bit
my @mem = (0 x 65535);

# Memory allocation
#
# mem[0]   = R0  ... mem[7] = R8
# mem[100] = TOS ... mem[355] = BOS => stack
# mem[8] = A , mem[9] = S (performed by ALU, addition and subtraction)
# A and S contains add and sub (unsigned) : A = A + R0, S = S - R0

# mem[10] = FLAGS (00000000C0Z0V0S0)
# mem[11] = FLAG MASK

# Instruction Format
# IC = 4bit
# Address = 8bit
# Immediate = 12bit

# NOP  = No Operation           : 0000 000000000000
# LDMR = Load from memory       : 0001 MMMMMMMM0RRR
# LDI  = Load immediate (in R0) : 0010 IIIIIIIIIIII
# STRM = Store to memory        : 0001 MMMMMMMM1RRR
# ADDI = Add immediate to A     : 0100 IIIIIIIIIIII (if FLAG[S] = 0)
# SUBI = Sub immediate from A   : 0101 IIIIIIIIIIII (if FLAG[S] = 0)
# ADDIS = Add imm signed to A   : 0100 IIIIIIIIIIII (if FLAG[S] = 1)
# SUBIS = Sub imm signed from A : 0101 IIIIIIIIIIII (if FLAG[S] = 1)
# CLC   = FLAG[8]  = 0          : 0000 000000001000
# CLZ   = FLAG[10] = 0          : 0000 000000001010
# CLV   = FLAG[12] = 0          : 0000 000000001100
# CLS   = FLAG[14] = 0          : 0000 0000000 1110
# SEC   = FLAG[8]  = 1          : 0000 100000001000
# SEZ   = FLAG[10] = 1          : 0000 100000001010
# SEV   = FLAG[12] = 1          : 0000 100000001100
# SES   = FLAG[14] = 1          : 0000 1000000 1110


