module Top_DMA_Controller (
    input wire clk,
    input wire rst,
    input wire HLDA,
    input wire [3:0] DREQ,
    inout wire [7:0] D,
    inout wire [3:0] A,
    output wire [3:0] DACK,
    output wire HRQ,
    output wire MEMR,
    output wire MEMW,
    output wire AEN,
    output wire ADSTB,
    output wire MARK,
    output wire TC
);
    // Internal signals
    wire MasterMode;
    wire [7:0] Data_Bus_Out;
    wire [7:0] IOData;

    // Instantiate Control Logic and Mode Register
    Control_Logic_Mode_Register CLMR (
        .clk(clk),
        .rst(rst),
        .HLDA(HLDA),
        .REQ(DREQ),
        .EN(DREQ),
        .HRQ(HRQ),
        .MEMR(MEMR),
        .MEMW(MEMW),
        .AEN(AEN),
        .ADSTB(ADSTB),
        .TC(TC),
        .MARK(MARK),
        .A(A)
    );

    // Instantiate Data Bus Buffer
    DataBusBuffer DBB (
        .clk(clk),
        .rst(rst),
        .MasterMode(MasterMode),
        .D_IO_In(D),
        .D_MP_In(Data_Bus_Out),
        .Data_Bus_Out(Data_Bus_Out)
    );

    // Instantiate Priority Resolver
    Priority_Resolver PR (
        .Sel(1'b0), // Assuming Fixed Priority for simplicity
        .DREQ(DREQ),
        .DACK(DACK)
    );

    // Instantiate Mux Request
    mux_Req MUX (
        .DACK(DACK),
        .I01(D[0]),
        .I02(D[1]),
        .I03(D[2]),
        .I04(D[3]),
        .IOData(IOData)
    );

    // Instantiate Read/Write Logic
    ReadWriteLogic RWL (
        .IORD(MEMR),
        .IOWR(MEMW),
        .A(A),
        .CLK(clk),
        .RST(rst),
        .MasterMode(MasterMode)
    );

    // Instantiate Top Channel Block
    Top_ChannelBlock TCB (
        .PS(1'b0), // Assuming Fixed Priority for simplicity
        .DREQ(DREQ),
        .I01(D[0]),
        .I02(D[1]),
        .I03(D[2]),
        .I04(D[3]),
        .IOData(IOData)
    );

endmodule
