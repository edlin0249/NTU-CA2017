1.implementation of code
	step 1. make sure that '+', '-' , '*', '/'  do right calculation based on their own operations using 'beq' to identify; otherwise, jump to 'result' label using 'j' and register $s6 is set to 1 using 'seq'. However, if divisor is equal to 0 when doing division calculation, also jump to 'result' label using 'j' and register $s6 is set to 1 using 'seq'.
	step 2. go to 'Loop2' label if register $s6 is identified to 1 using 'beq'; otherwise, go to 'Loop1' label. In 'Loop1', convert digit to character by 'div' 10 and 'addi' '0' for four iterations. In 'Loop2', render 'XXXX' for four iterations.
	step 3. need to tranfer data to 'output_ascii' using 'lb' and 'sb' due to storing characters in 'array1'

2.platform of my laptop is Mac

3.encounter problems and solve them
	Q1: encounter error messages when transferring data from 'array1' to 'output_ascii' initially?
	A1: add ".align 4"