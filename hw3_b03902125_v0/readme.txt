1.implementation of code
	step 1. Check if final condition is achieved using ’slti’.
	step 2. If $a0 < 2, keep on the rest part and turn back using ‘jr’; otherwise, jump to ‘L2’ using ‘beq’.
	step 3. If jump to ‘L2’, execute recursive function and jump to ‘L1’ using ‘jal’. If turn back to ‘L2’ from ‘L1’ , execute the rest part of the recursive function and turn back to previous state using ‘jr’.

2.platform of my laptop is Mac