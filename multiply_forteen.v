module multiply_forteen(in,out);
input [0:7]in;
  output [0:7]out;
  
  
wire [0:7]temp;
wire [0:7]temp1;
wire [0:7]temp2;
wire [0:7]temp3;

  
multiply_two m10(in,temp);
 assign temp1=temp^in;
multiply_two m11(temp1,temp2);
assign  temp3=temp2^in;
multiply_two m12(temp3,out);
 
 
  endmodule
  