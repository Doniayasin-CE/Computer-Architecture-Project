`timescale 1ns / 1ps


module datapath_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [4:0] State;

	// Instantiate the Unit Under Test (UUT)
	datapath UUT (
		.clk(clk), 
		.rst(rst), 
		.State(State)
	);

	always #5 assign clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#10000;
		rst = 0;
        
		// Add stimulus here
		

	end
      
endmodule