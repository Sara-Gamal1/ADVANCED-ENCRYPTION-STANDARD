module ShiftRows(in,out);
input [127:0]in;
output [127:0] out;

wire[31:0] c1;   wire[31:0] c2;  wire[31:0] c3;  wire[31:0] c4;
wire[31:0] c1out;   wire[31:0] c2out;   wire[31:0] c3out;   wire[31:0] c4out;

wire [31:0]r1;   wire[31:0]r2;   wire[31:0]r3;   wire[31:0]r4;
wire [31:0]r1out;   wire[31:0]r2out;   wire[31:0]r3out;   wire[31:0]r4out;


assign c4=in[31:0];
assign c3=in[63:32];
assign c2=in[95:64];
assign c1=in[127:96];

assign r4={c1[7:0],c2[7:0],c3[7:0],c4[7:0]};
assign r3={c1[15:8],c2[15:8],c3[15:8],c4[15:8]};
assign r2={c1[23:16],c2[23:16],c3[23:16],c4[23:16]};
assign r1={c1[31:24],c2[31:24],c3[31:24],c4[31:24]};


shift   s2(2'd1,r2,r2out);
shift   s3 (2'd2,r3,r3out);
shift   s4(2'd3,r4,r4out);

assign r1out=r1;

assign c4out={r1out[7:0],r2out[7:0],r3out[7:0],r4out[7:0]};
assign  c3out={r1out[15:8],r2out[15:8],r3out[15:8],r4out[15:8]};
assign  c2out={r1out[23:16],r2out[23:16],r3out[23:16],r4out[23:16]};
assign  c1out={r1out[31:24],r2out[31:24],r3out[31:24],r4out[31:24]};
assign out={c1out,c2out,c3out,c4out};

endmodule





