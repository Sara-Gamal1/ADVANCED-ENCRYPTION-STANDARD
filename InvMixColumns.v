module InvMixColumns(in,out);
input [127:0]in;
 output [127:0]out;
wire[31:0] out0;
wire[31:0] out1;
wire[31:0] out2;
wire[31:0] out3;



multiply_inv m1(in[31:0],out0); 
multiply_inv m2(in[63:32],out1); 
multiply_inv m3(in[95:64],out2); 
multiply_inv m4(in[127:96],out3); 
assign out={out3,out2,out1,out0};

endmodule
