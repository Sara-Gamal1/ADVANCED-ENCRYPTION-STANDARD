module multiply_nine(in,out);
input [0:7]in;
  output [0:7]out;
  
  
wire [0:7]temp;
wire [0:7]temp1;
wire [0:7]temp2;
wire [0:7]temp3;

  
multiply_two m1(in,temp);
multiply_two m2(temp,temp1);
multiply_two m3(temp1,temp2);
assign  out=temp2^in;

  endmodule
  