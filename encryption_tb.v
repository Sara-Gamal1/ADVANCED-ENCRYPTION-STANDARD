
module encryption_tb();
reg [3:0]Nk;
reg [3:0] Nr;
reg [127:0]in;
wire[127:0] out;
reg [255:0]key;


encryption #(8,4'd14)E(in,out,key);

initial
begin
$display("%h",out);

in=128'h00112233445566778899aabbccddeeff;
 
key=256'h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f
 ;

 
end
endmodule
