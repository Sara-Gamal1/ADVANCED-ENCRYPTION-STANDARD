module SubWord(in,out);
input [31:0]in;
output [31:0]out;
sbox s0(in[7:0],out[7:0]);
sbox s1(in[15:8],out[15:8]);
sbox s2(in[23:16],out[23:16]);
sbox s3(in[31:24],out[31:24]);
endmodule