`timescale 1ns/100ps
module vendtest();


wire 	Dispense;
wire [2:0]	State;


reg Nickel,Dime,Reset,CLK;
//bring in vending machine
vend2 inst(Reset,CLK,Dime,Nickel,Dispense,State);


// clk
initial CLK = 1'b0;

always #5 CLK = !CLK;

//control
initial begin
	Reset = 1'b1;
	Nickel = 1'b0;
	Dime = 1'b0;
	

	//three nickels
	#10 Nickel = 1'b1;
	#10 Nickel = 1'b0;
	
	#10 Nickel = 1'b1;
	#10  Nickel = 1'b0;
	
	#10 Nickel = 1'b1;
	#10  Nickel = 1'b0;
	
	// three dimes
	#20 Dime = 1'b1;
	#10  Dime = 1'b0;
	
	#10 Dime = 1'b1;
	#10  Dime = 1'b0;
	
	#10 Dime = 1'b1;
	#10  Dime = 1'b0;
	
	//reset check
	#10 Dime = 1'b1;
	#10  Dime = 1'b0;
	#10 	Reset = 1'b0;
	#20	 Reset = 1'b1;
	
	// dime nickel
	#10 Dime = 1'b1;
	#10  Dime = 1'b0;
	#10 Nickel = 1'b1;
	#10  Nickel = 1'b0;
	
	//nickel Dime
	#10 Nickel = 1'b1;
	#10  Nickel = 1'b0;
	#10 Dime = 1'b1;
	#10  Dime = 1'b0;
	
end 

//monitor
initial 
	$monitor ($time, " CLK = ", CLK, " Dispense = ", Dispense, " State = ", State," Nickel = ", Nickel, " Dime = ",Dime, " reset = ", Reset);
	
initial 
	#400 $finish;
	
endmodule