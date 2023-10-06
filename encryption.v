module encryption#( parameter N=1)(in, out,  key);
localparam NK=2*N+2;
localparam NR=2*N+8;
input wire [127:0] in;
output wire [127:0] out;
input [(2*N+2)*4*8-1:0] key;


wire [127:0] state[14:0];
wire [127:0] state_out1[14:0];
wire [127:0] state_out2[14:0];
wire [127:0] state_out3[14:0];
wire [128*((2*N+8)+1)-1:0]all_key;






General_KeyExpansion #((2*N+2)*4*8,2*N+8) g(key,all_key);


 genvar i;
 generate
 
 assign state[(2*N+8)-1]=in^all_key[128*((2*N+8)+1)-1-:128];
 for(i=(2*N+8)-1;i>0;i=i-1)
 begin :f
Sub_Bytes s(state[i],state_out1[i]) ;
 
ShiftRows r(state_out1[i],state_out2[i]) ;
 
MixCloumns m(state_out2[i],state_out3[i]);
 
assign state[i-1]=state_out3[i]^all_key[(128*(i+1)-1)-:128];

end //end for

Sub_Bytes c(state[0],state_out1[0]);
 
ShiftRows w(state_out1[0],state_out2[0]);

assign out = state_out2[0]^all_key[127:0];

endgenerate          //end genvar
endmodule