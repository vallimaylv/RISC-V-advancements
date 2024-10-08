module RRO(DREQ,DACK);
input [3:0] DREQ;
output reg [3:0] DACK;
parameter s1=3'd0,s2=3'd1,s3=3'd2,s4=3'd3;
reg [1:0] ps,ns;
// next state combinational logic
always @(*) begin 
case(ps)
s1:ns=s2;
s2:ns=s3;
s3:ns=s4;
s4:ns=s1;
default : ns=s1;
endcase
end
//next state sequential logic 
always @(*) begin 
ps=ns;
end
//ps output logic
always @(*) begin 
case(ps) 
s1:begin if(DREQ[0]) DACK=4'b0001;
         else DACK=4'b0000;
   end
s2:begin if(DREQ[1]) DACK=4'b0010;
         else DACK=4'b0000;
         end
s3:begin if(DREQ[2]) DACK=4'b0100;
         else DACK=4'b0000;
   end
s4:begin if(DREQ[3]) DACK=4'b1000;
         else DACK=4'b0000;
   end
default:DACK=4'b0000;
endcase
end
endmodule
