// Copyright (C) 1991-2007 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

module vendblock(
	Reset,
	CLK,
	Dime,
	Nickel,
	Dispense,
	Q0,
	Q1,
	Q2
);

input	Reset;
input	CLK;
input	Dime;
input	Nickel;
output	Dispense;
output	Q0;
output	Q1;
output	Q2;

reg	Q_ALTERA_SYNTHESIZED0;
reg	Q_ALTERA_SYNTHESIZED1;
reg	Q_ALTERA_SYNTHESIZED2;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_34 = 1;




always@(posedge CLK or negedge Reset or negedge SYNTHESIZED_WIRE_34)
begin
if (!Reset)
	begin
	Q_ALTERA_SYNTHESIZED0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Q_ALTERA_SYNTHESIZED0 <= 1;
	end
else
	begin
	Q_ALTERA_SYNTHESIZED0 <= SYNTHESIZED_WIRE_0;
	end
end

always@(posedge CLK or negedge Reset or negedge SYNTHESIZED_WIRE_34)
begin
if (!Reset)
	begin
	Q_ALTERA_SYNTHESIZED1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Q_ALTERA_SYNTHESIZED1 <= 1;
	end
else
	begin
	Q_ALTERA_SYNTHESIZED1 <= SYNTHESIZED_WIRE_2;
	end
end
assign	SYNTHESIZED_WIRE_31 =  ~Q_ALTERA_SYNTHESIZED2;
assign	SYNTHESIZED_WIRE_32 =  ~Q_ALTERA_SYNTHESIZED0;
assign	SYNTHESIZED_WIRE_33 =  ~Q_ALTERA_SYNTHESIZED1;
assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;
assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;
assign	SYNTHESIZED_WIRE_11 =  ~Q_ALTERA_SYNTHESIZED2;
assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_11 & Q_ALTERA_SYNTHESIZED1 & Q_ALTERA_SYNTHESIZED0 & Dime;
assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_35 & Q_ALTERA_SYNTHESIZED0 & Nickel;
assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_35 & Q_ALTERA_SYNTHESIZED1 & Q_ALTERA_SYNTHESIZED0 & SYNTHESIZED_WIRE_36;
assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_37 & Dime;

always@(posedge CLK or negedge Reset or negedge SYNTHESIZED_WIRE_34)
begin
if (!Reset)
	begin
	Q_ALTERA_SYNTHESIZED2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_34)
	begin
	Q_ALTERA_SYNTHESIZED2 <= 1;
	end
else
	begin
	Q_ALTERA_SYNTHESIZED2 <= SYNTHESIZED_WIRE_17;
	end
end
assign	SYNTHESIZED_WIRE_35 =  ~Q_ALTERA_SYNTHESIZED2;
assign	SYNTHESIZED_WIRE_36 =  ~Dime;
assign	SYNTHESIZED_WIRE_37 =  ~Q_ALTERA_SYNTHESIZED1;
assign	SYNTHESIZED_WIRE_4 = Q_ALTERA_SYNTHESIZED2 & SYNTHESIZED_WIRE_19 & Q_ALTERA_SYNTHESIZED0;
assign	SYNTHESIZED_WIRE_19 =  ~Q_ALTERA_SYNTHESIZED1;
assign	SYNTHESIZED_WIRE_38 =  ~Q_ALTERA_SYNTHESIZED2;
assign	SYNTHESIZED_WIRE_28 =  ~Nickel;
assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_38 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_23;
assign	SYNTHESIZED_WIRE_5 = Q_ALTERA_SYNTHESIZED0 & SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_38;
assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_38 & Q_ALTERA_SYNTHESIZED1 & Q_ALTERA_SYNTHESIZED0 & SYNTHESIZED_WIRE_28;
assign	SYNTHESIZED_WIRE_22 = Nickel ^ Dime;
assign	SYNTHESIZED_WIRE_23 =  ~Q_ALTERA_SYNTHESIZED0;
assign	Dispense = SYNTHESIZED_WIRE_29 | SYNTHESIZED_WIRE_30;
assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_31 & Q_ALTERA_SYNTHESIZED1 & SYNTHESIZED_WIRE_32;
assign	SYNTHESIZED_WIRE_29 = Q_ALTERA_SYNTHESIZED2 & SYNTHESIZED_WIRE_33 & Q_ALTERA_SYNTHESIZED0;
assign	Q0 = Q_ALTERA_SYNTHESIZED0;
assign	Q1 = Q_ALTERA_SYNTHESIZED1;
assign	Q2 = Q_ALTERA_SYNTHESIZED2;


endmodule
