module General_KeyExpansion#(parameter size=128,parameter NR=10)(k,w);


output[((128*(NR+1))-1):0]w;
input[size-1:0]k;
reg [3:0] v[9:0];
integer i;
initial
begin
for(i=0;i<10;i=i+1)v[i]=i;
end




wire[(size-1):0]w0;
wire[(size-1):0]w1;
wire[(size-1):0]w2;
wire[(size-1):0]w3;
wire[(size-1):0]w4;
wire[(size-1):0]w5;
wire[(size-1):0]w6;
wire[(size-1):0]w7;
wire[(size-1):0]w8;
wire[(size-1):0]w9;





KeyExpansion #(size) k0(k,v[0],w0);
KeyExpansion #(size) k9(w0,v[1],w1);
KeyExpansion #(size) k8(w1,v[2],w2);
KeyExpansion #(size) k7(w2,v[3],w3);
KeyExpansion #(size) k6(w3,v[4],w4);
KeyExpansion #(size) k5(w4,v[5],w5);
KeyExpansion #(size) k4(w5,v[6],w6);
KeyExpansion #(size) k3(w6,v[7],w7);
KeyExpansion #(size) k2(w7,v[8],w8);
KeyExpansion #(size) k1(w8,v[9],w9);




assign w=(size==128)?{k,w0,w1,w2,w3,w4,w5,w6,w7,w8,w9}:
(size==192)?{k,w0,w1,w2,w3,w4,w5,w6,w7[191:64]}:
(size==256)?{k,w0,w1,w2,w3,w4,w5,w6[255:128]}:0;


endmodule