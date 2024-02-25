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






module palindrome3b (
  input   wire        clk,
  input   wire        reset,

  input   wire        x_i,

  output  wire        palindrome_o
);

  // Write your logic here...

endmodule