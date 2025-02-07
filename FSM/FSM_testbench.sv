// Code your testbench here
// or browse Examples
//////////////////////////////////////////////////////////////////////////////////
// Name: AAyush Chaudhari
// Roll no. 231040001
// Department of Electical Engineering
// Indian Institute Of Technology
// Create Date:    21:42:56 18/05/2024
// Design Name: FSM
// Module Name:   MUL_test
// Project Name: Multiplication By Repeated Addition
// 
//
//////////////////////////////////////////////////////////////////////////////////
module MUL_test;
reg [15:0] data_in;
reg clk, start;
wire done;
MUL_datapath DP (eqz, LdA, LdB, LdP, clrP, decB, data_in, clk);
controller CON (LdA, LdB, LdP, clrP, decB, done, clk, eqz, start);
initial
begin
clk = 1'b0;
#3 start = 1'b1;
#500 $finish;
end
always #5 clk = ~clk;initial
begin
#17 data_in = 17;
#10 data_in = 5;
end
initial
begin
$monitor ($time, " %d %b", DP.Y, done);
$dumpfile ("mul.vcd"); $dumpvars (0, MUL_test);
end
endmodule
