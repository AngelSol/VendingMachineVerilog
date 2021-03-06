module vend2(
	Reset,
	CLK,
	Dime,
	Nickel,
	Dispense,
	State
);
//inputs
input		Reset;
input		CLK;
input		Dime;
input		Nickel;

//outputs
output			Dispense;
output		[2:0]	State; 

reg Dispense;
reg [2:0]	State; 
//output	reg [2:0] State;

//states
localparam	State_0 = 3'b000,
			State_1 = 3'b001,
			State_2 = 3'b011,
			State_3 = 3'b010,
			State_4 = 3'b101;

//State Registers
reg [2:0] Current;
reg [2:0] Next;

initial begin
	Current = State_0;
	Next = State_0;
end 

always @ (posedge CLK) begin
	if (!Reset)
		Current <= State_0;
	else
		Current <= Next;
	
	State = Current;
end

always @ (*) begin
	Next = Current;
	
	case (Current)
		
		State_0: begin
			Dispense = 0;
			if 	(!Reset)
				Next = State_0;
				
			else if (Nickel)
				Next = State_1;
			
			else if (Dime)
				Next = State_2;
				
			else
				Next = Current;
		end
		
		State_1: begin
			Dispense = 0;
			if 	(!Reset)
				Next = State_0;
				
			else if (Nickel)
				Next = State_2;
			
			else if (Dime)
				Next = State_3;
				
			else
				Next = Current;
		end
		
		State_2: begin
			Dispense = 0;
			if 	(!Reset)
				Next = State_0;
				
			else if (Nickel)
				Next = State_3;
			
			else if (Dime)
				Next = State_4;
				
			else
				Next = Current;
		end
		
		State_3: begin
			Dispense = 1;
			if 	(!Reset)
				Next = State_0;
			else
				Next = State_0;
		end
		
		State_4: begin
			Dispense = 1;
			if 	(!Reset)
				Next = State_0;
			else
				Next = State_1;
		end
		
	endcase
	
end
		
		


endmodule