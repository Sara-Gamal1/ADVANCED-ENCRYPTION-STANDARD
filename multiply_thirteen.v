module multiply_thirteen(in,out);
input [0:7]in;
  output [0:7]out;
  
  
wire [0:7]temp;
wire [0:7]temp1;
wire [0:7]temp2;
wire [0:7]temp3;

  
multiply_two m7(in,temp);
 assign temp1=temp^in;
multiply_two m8(temp1,temp2);
multiply_two m9(temp2,temp3);
 assign out=temp3^in;
 
 
  endmodule
  