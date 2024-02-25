/*
	Details:
	
	You are tasked to design a circuit which would 
	detect a 3-bit palindrome sequence from incoming stream of bits.

	Palindrome code is a sequence of characters which reads the same backward as forward. 
	For example, the following are palindromes: 101, 010, 111, 000, etc.
	
	All the flops should be positive edge triggered with asynchronous resets (if any).
	
	Interface Definition
	x_i : Input stream of bits to the circuit
	
	palindrome_o : Output to signal that the current bit and the last two bits together form a
				palindrome
	
	Interface Requirements
	
	Output must be given every cycle
	Input will be a stream of bits presented to the circuit on every cycle
	
*/

/*
	/////////////////////
	//	Design Thinking
	/////////////////////
	
	Create a pipeline of 2 registers.
	
	Check if current input is equal to the last pipe reg.
	If Yes, assert the palindrome_o, if no, let it be zero.
	
	Please note that the registers should be reset to X or
	palindrome_o should be checked only after 2 cycles of 
	reset. 
	
*/




module palindrome3b (
  input   wire        clk,
  input   wire        reset,

  input   wire        x_i,

  output  wire        palindrome_o
);

  // Write your logic here...

endmodule