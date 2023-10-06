module multiply_eleven(in,out);
input [0:7]in;
  output [0:7]out;
  
  
wire [0:7]temp;
wire [0:7]temp1;
wire [0:7]temp2;
wire [0:7]temp3;

  
multiply_two m4(in,temp);
multiply_two m5(temp,temp1);
assign  temp2=temp1^in;
multiply_two m6(temp2,temp3);
assign out=temp3^in;

  endmodule
  