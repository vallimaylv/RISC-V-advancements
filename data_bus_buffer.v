module DataBusBuffer(input clk,rst,MasterMode,input [7:0] D_IO_In,D_MP_In,output reg[7:0]  Data_Bus_Out);
always @(posedge clk, posedge rst) begin
if(rst) Data_Bus_Out<=0;
else begin 
if(MasterMode)Data_Bus_Out<=D_IO_In;
else if(!MasterMode)Data_Bus_Out<=D_MP_In;
else Data_Bus_Out<=8'bz;
end
end
endmodule
