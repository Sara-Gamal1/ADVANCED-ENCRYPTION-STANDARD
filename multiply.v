module multiply(in ,out);
  input [31:0]in;
  output[31:0]out;
  
  wire [7:0]a1;
  wire [7:0]a2;
  wire [7:0]a3;
  wire [7:0]a0;
  
  multiply_two m0(in[7:0],a0);
  multiply_two m1(in[15:8],a1);
  multiply_two m2( in[23:16],a2);
  multiply_two m3(in[31:24],a3);
  
  assign out[31:24]=a3^a2^in[15:8]^in[23:16]^in[7:0];
  
  
   assign out[23:16]=in[31:24]^in[7:0]^a2^a1^in[15:8];
	
	
	 assign out[15:8]=in[31:24]^in[23:16]^a1^a0^in[7:0];
	 
	 
	  assign out[7:0]=a3^a0^in[15:8]^in[23:16]^in[31:24];
  
  endmodule