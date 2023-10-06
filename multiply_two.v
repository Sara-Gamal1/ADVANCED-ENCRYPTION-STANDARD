 module multiply_two(in,out);
  input [0:7]in;
  output [0:7]out;
  wire [0:7]temp;
  
assign out=(in[0] ==0)?
{in[1:7],1'b0}
:{in[1:7],1'b0}^8'h1b;

  endmodule
  
  
  