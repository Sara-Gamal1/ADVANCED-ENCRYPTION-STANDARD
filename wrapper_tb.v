module wrapper_tb();
reg clk;
 wire led1;
 wire led2;
 wire led3;
 reg rst;
 reg en;
wrapper f (clk,rst,en, led1, led2, led3);
always #50 clk=~clk;
initial
begin
clk=0;
rst=0;
en=1;




end
endmodule