##########################
# a0: nota		 #
# a1: duração		 #
# a2: instrumento	 #
# a3: volume		 # 
##########################

.macro pause
li a7, 32
li a0, 1000
ecall
.end_macro

.macro alt_pause	# Pause usado para quando uma nota curta for tocada antes do próximo acorde
li a7, 32
li a0, 700
ecall
.end_macro

.text
MAIN:	li a7, 31	# Usando o syscall 31 para criar um acorde
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0, 64 # E
	ecall
	li a0, 69 # A 
	ecall

	pause

	li a7, 31
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0 65 # F
	ecall
	li a0, 69 # A
	ecall


	alt_pause

	li a7, 33 
	li a0, 69 # A 
	li a1, 300
	ecall


	li a7, 31
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0, 64 # E
	ecall
	li a0, 69 # A
	ecall

	pause

	li a7, 31
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0, 64 # E
	ecall
	li a0, 72 # C 
	ecall


	alt_pause

	li a7, 33
	li a0, 71 # B
	li a1, 300
	ecall


	li a7, 31
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0, 64 # E
	ecall
	li a0, 71 # B
	ecall


	alt_pause

	li a7, 33
	li a0, 69 # A
	li a1, 300
	ecall


	li a7, 31
	li a0, 57 # A (uma oitava abaixo)
	li a1, 1000
	li a2, 0
	li a3, 127
	ecall
	li a0, 65 # F
	ecall
	li a0, 69 # A
	ecall


	alt_pause

	li a7, 33
	li a0, 69 # A
	li a1, 300
	ecall


	li a7, 31
	li a0, 57 # A (uma oitava abaixo)     
	li a1, 2000
	li a2, 0
	li a3, 127
	ecall
	li a0, 64 # E
	ecall
	li a0, 69 # A 
	ecall
