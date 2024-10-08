
module ReadWriteLogic(inout IORD,IOWR,inout wire [3:0] A, input CLK,RST, MasterMode);
    reg IORD_reg;
    reg IOWR_reg;
    reg [3:0] A_reg;
    reg [3:0] counter; // Simple counter for address lines
    reg operation; // 0 for read, 1 for write
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            IORD_reg <= 1'b0;
            IOWR_reg <= 1'b0;
            A_reg <= 4'b0;
            counter <= 4'b0;
            operation <= 1'b0; 
        end else if (MasterMode) begin
            if (operation == 1'b0) begin
                IORD_reg <= 1'b1;
                IOWR_reg <= 1'b0;
            end else begin
                IORD_reg <= 1'b0;
                IOWR_reg <= 1'b1;
            end
            if(counter==4'd15) counter<=0;
            else counter <= counter + 1;
            A_reg <= counter;
            operation <= ~operation;
        end else begin //Recived from the MP
            IORD_reg <= IORD;
            IOWR_reg <= IOWR;
            A_reg <= A;
        end
    end
assign IORD = MasterMode ? IORD_reg : 1'bz;
assign IOWR = MasterMode ? IOWR_reg : 1'bz;
assign A = MasterMode ? A_reg : 4'bz;
endmodule
