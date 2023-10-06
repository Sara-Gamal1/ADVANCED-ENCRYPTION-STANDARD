module decryption#( parameter N=1)(in, out,  key);
localparam NK=2*N+2;
localparam NR=2*N+8;
input wire [127:0] in;
output wire [127:0] out;
input [(2*N+2)*4*8-1:0] key;


wire [127:0] state[13:0];
wire [127:0] state_out1[13:0];
wire [127:0] state_out2[13:0];
wire [127:0] state_out3[13:0];
wire [128*((2*N+8)+1)-1:0]all_key;






General_KeyExpansion #((2*N+2)*4*8,(2*N+8)) g(key,all_key);


 genvar i;
 generate
 
 assign state[0]=in^all_key[127:0];
 for(i=0;i<(2*N+8)-1;i=i+1)
 begin :f
 ShiftRows_inverse r(state[i],state_out1[i]) ;
 
inv_Sub_Bytes s(state_out1[i],state_out2[i]) ;
 
assign state_out3[i]=state_out2[i]^all_key[(i+2)*128-1-:128];
 
InvMixColumns m(state_out3[i],state[i+1]);
 


end //end for

inv_Sub_Bytes c(state[(2*N+8)-1],state_out2[(2*N+8)-1]);
 
ShiftRows_inverse w(state_out2[(2*N+8)-1],state_out1[(2*N+8)-1]);

assign out = state_out1[(2*N+8)-1]^all_key[128*((2*N+8)+1)-1-:128];

endgenerate          //end genvar
endmodule