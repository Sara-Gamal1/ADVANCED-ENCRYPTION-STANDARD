module KeyExpansion#(parameter size=128)(k,rc,w);

input [size-1:0] k;
input [3:0]rc;
output  [size-1:0] w;

 wire [31:0] wo;
 wire [31:0] w1;
 wire [31:0] w2;
wire [31:0] w4;

assign w4=k[31:0];
wire [31:0]w8;
wire [31:0]w9;
assign w8=w[(size-65-32):(size-96-32)];
SubWord s(w8,w9);
Rcon r(rc,wo);


RotWord  r1 (w4,w1);
SubWord r2(w1,w2);


assign w=(size==128)?{
wo^k[127:96]^w2
,w[127:96]^k[95:64]
,w[95:64]^k[63:32]
,w[63:32]^k[31:0]}:

(size==192)? {wo^w2^k[191:160],w[191:160]^k[159:128],w[159:128]^k[127:96],w[127:96]^k[95:64],w[95:64]^k[63:32]
,w[63:32]^k[31:0]}:

(size==256)? 


 {wo^w2^k[255:224],w[255:224]^k[223:192],w[223:192]^k[191:160],w[191:160]^k[159:128],w9^k[127:96],w[127:96]^k[95:64],w[95:64]^k[63:32]
,w[63:32]^k[31:0]}

 :0


;




   
endmodule