module shift(n,sin,sout);
input[1:0] n;
input [31:0]sin;
output reg [31:0]sout;

wire [7:0] s1;   wire [7:0]s2;   wire[7:0]s3;   wire[7:0]s4;

assign s4=sin[7:0];
assign s3=sin[15:8];
assign s2=sin[23:16];
assign s1=sin[31:24];
always @(n or sin)
case(n)
 1:  sout={s2,s3,s4,s1};
 2: sout={s3,s4,s1,s2};
 3: sout={s4,s1,s2,s3};
 endcase
 
 endmodule