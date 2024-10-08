
module Priority_Resolver(input Sel,input[3:0] DREQ,output DACK);
wire [3:0] DACK_FO_w,DACK_RO_w;
FP Fixed_Priority(DREQ,DACK_FO_w);
RRO Roundrobin(DREQ,DACK_RO_w);
assign DACK=Sel?DACK_RO_w:DACK_FO_w;
endmodule
module mux_Req(DACK,I01,I02,I03,I04,IOData);
input [3:0] DACK;
input I01,I02,I03,I04;
output reg [7:0] IOData;
always @(*) begin 
case(DACK) 
4'b0000:IOData<=I01;
4'b0010:IOData<=I02;
4'b0100:IOData<=I03;
4'b1000:IOData<=I04;
default:IOData<=8'b0;
endcase
end
endmodule
