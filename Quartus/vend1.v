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

//var
wire nDime,nNickel,nReset,vcc,g0,g1,g2,g3,g4,g5,nq0,nq1,nq2,h0,h1,h2,h3,i0,j0,j1,j2;
wire Dispense;
wire [2:0]	State; 


not(nDime,Dime);
not(nNickel,Nickel);
not(nq0,State[0]);
not(nq1,State[1]);
not(nq2,State[2]);
assign vcc = 1;

//state[0]
and (g0,State[0],State[2],nq1);
and (g1,State[0],State[1],nq2,nNickel);
and (g2,nq2,State[0],nq1,nDime);
xor (g3,Dime,Nickel);
and (g4,nq2,nq0,nq1,g3);
or (g5,g0,g1,g2,g4);
DFF d0(g5,CLK,Reset,vcc,State[0]);

//state[1]
and (h0,State[0],State[1],nq2,nDime);
and (h1,State[0],nq2,Nickel);
and (h2,nq1,nq2,Dime);
or (h3,h0,h1,h2);

DFF d1(h3,CLK,Reset,vcc,State[1]);

//state[2]
and (i0,State[0],State[1],nq2,Dime);
DFF d3(i0,CLK,Reset,vcc,State[2]);

//Dispense
and (j0,nq2,State[1],nq0);
and (j1,State[2],nq1,State[0]);
or (Dispense,j1,j0);
 //Dispense = j2;

endmodule 