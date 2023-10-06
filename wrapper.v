module wrapper (input clk,input rst,input en,output reg led1,output reg led2,output reg led3);



wire [127:0]in_1;



wire [127:0]in_2;


wire [127:0]in_3;

wire [127:0]key_1;
wire[191:0]key_2;
wire[255:0]key_3;

wire [127:0]out1;
wire [127:0]out21;


wire [127:0]out2;
wire [127:0]out22;


wire [127:0]out3;
wire [127:0]out23;


wire [127:0]key1;
wire[191:0]key2;
wire[255:0]key3;


initial
begin
led1=0;  led2=0;  led3=0;
end
assign  in_1='h00112233445566778899aabbccddeeff;
 assign key_1='h000102030405060708090a0b0c0d0e0f;
 assign in_2='h 00112233445566778899aabbccddeeff;
 assign key_2='h000102030405060708090a0b0c0d0e0f1011121314151617;
 assign  in_3='h00112233445566778899aabbccddeeff;
 assign key_3='h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;





encryption #(1)e(in_1,out1,key_1);
decryption #(1)d(out1,out21,key_1);


encryption #(2)e1(in_2,out2,key_2);
decryption #(2)d1(out2,out22,key_2);



encryption #(3)e2(in_3,out3,key_3);
decryption #(3)d2(out3,out23,key_3);


  initial begin
  #5
  $display ("input_data_____ output_of_encryption ______key_128____decryption_output");
  $monitor (" %h %h %h %h",in_1,out1,key_1,out21);
  
 #10
  $display ("input_data_____ output_of_encryption ______key_192____decryption_output");
  $monitor (" %h %h %h %h",in_2,out2,key_2,out22);
  
 
 #20 $display ("input_data_____ output_of_encryption ______key_256____decryption_output");
  $monitor (" %h %h %h %h",in_3,out3,key_3,out23);
  
 end

integer i=0;

always @(posedge clk,posedge rst)
begin

if(rst==1)
begin
led1=0;
led2=0;
led3=0;
i=0;
end

 else if(en==0)
 begin
led1=led1;
 led2=led2;
 led3=led3;
 end

else if(((rst==0)&&(en==1)&&i<4))
begin
led1=0;
led2=0;
led3=0;
if(i==0) begin
led1=(in_1==out21)?1:0;
if(led1==1) $display ("pass_128");
end
if(i==1) begin
led2=(in_2==out22)?1:0;
if(led2==1)  $display ("pass_192");
end
if(i==2) begin
led3=(in_3==out23)?1:0;
if(led3==1) $display ("pass_256");
end
i=i+1;
end
end


endmodule