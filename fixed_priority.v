module FP(DREQ,DACK);
input [3:0] DREQ;
output [3:0] DACK;
assign DACK[3]=DREQ[3];//Highesh priority
assign DACK[2]=DREQ[2]&&!(DREQ[3]);
assign DACK[1]=DREQ[1]&&!(DREQ[2]||DREQ[3]);
assign DACK[0]=DREQ[2]&&!(DREQ[3]||DREQ[2]||DREQ[1]);
endmodule
