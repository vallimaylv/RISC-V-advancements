module Top_ChannelBlock(PS,DREQ,I01,I02,I03,I04,IOData);
input PS;
input [3:0] DREQ;
input [7:0] I01,I02,I03,I04;
output [7:0] IOData;
wire [3:0] DACK;
Priority_Resolver PR(PS,DREQ,DACK);
mux_Req MUX(DACK,I01,I02,I03,I04,IOData);
endmodule
