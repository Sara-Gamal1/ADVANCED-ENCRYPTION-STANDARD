module multiply_inv(in,out);
input [31:0]in;
  output[31:0]out;
  
  wire [7:0]a1;
  wire [7:0]a2;
  wire [7:0]a3;
  wire [7:0]a0;
  
  wire [7:0]b1;
  wire [7:0]b2;
  wire [7:0]b3;
  wire [7:0]b0;
  
  wire [7:0]c1;
  wire [7:0]c2;
  wire [7:0]c3;
  wire [7:0]c0;
  
  wire [7:0]d1;
  wire [7:0]d2;
  wire [7:0]d3;
  wire [7:0]d0;
  
  multiply_nine m0(in[7:0],a3);
  multiply_nine m1(in[15:8],a2);
  multiply_nine m2( in[23:16],a1);
  multiply_nine m3(in[31:24],a0);
  
  multiply_eleven m4(in[7:0],b3);
  multiply_eleven m5(in[15:8],b2);
  multiply_eleven m6( in[23:16],b1);
  multiply_eleven m7(in[31:24],b0);
  
  multiply_thirteen m8(in[7:0],c3);
  multiply_thirteen m9(in[15:8],c2);
  multiply_thirteen m10( in[23:16],c1);
  multiply_thirteen m11(in[31:24],c0);
  
  multiply_forteen m12(in[7:0],d3);
  multiply_forteen m13(in[15:8],d2);
  multiply_forteen m14( in[23:16],d1);
  multiply_forteen m15(in[31:24],d0);
  
  assign out[31:24]=d0^b1^c2^a3;
  
  
   assign out[23:16]=a0^d1^b2^c3;
	
	
	 assign out[15:8]=c0^a1^d2^b3;
	 
	  assign out[7:0]=b0^c1^a2^d3;
  
  endmodule