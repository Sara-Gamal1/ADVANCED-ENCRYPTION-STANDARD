module General_Key_tb();
reg  [255:0]k1;
reg  [255:0]k2;
reg  [255:0]k3;
wire[1407:0] w0;
wire [1727:0] w1;
wire[2045:0] w2;


initial 
begin 

k1[127:0]='h000102030405060708090a0b0c0d0e0f;
k1[255:128]=0;
k2[191:0]='h000102030405060708090a0b0c0d0e0f1011121314151617;
k2[255:192]=0;
k3='h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
end
 General_KeyExpansion#('d128,0)u1(k1,w0);
 General_KeyExpansion#('d192,1)u2(k2,w1);
 General_KeyExpansion#('d256,2)u3(k3,w2);

endmodule