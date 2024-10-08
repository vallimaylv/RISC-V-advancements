module Control_Logic_Mode_Register(
    input wire clk, 
    input wire rst, 
    input wire HLDA, 
    input wire [3:0] REQ, 
    input wire [3:0] EN,
    output reg HRQ, 
    output reg MEMR, 
    output reg MEMW, 
    output reg AEN, 
    output reg ADSTB, 
    output reg TC, 
    output reg MARK,
    output reg [3:0] A
);

    // State parameters
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6, S7 = 7;

    reg [2:0] PS, NS; // Present State and Next State
    reg [15:0] count_up; // Incrementing counter for MARK and TC logic
    reg [15:0] count_down; // Decrementing counter for TC logic

    // Control Logic and Mode Register logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            HRQ <= 0;
            MEMW <= 1;
            MEMR <= 1;
            AEN <= 0;
            ADSTB <= 0;
            TC <= 0;
            MARK <= 0;
            PS <= S0;
            count_up <= 0;
            count_down <= 0;
        end else begin
            PS <= NS;
        end
    end

    always @(PS, HLDA, REQ) begin
        case (PS)
            S0: begin
                if (REQ != 4'b0000) begin
                    NS <= S1;
                    HRQ <= 1;
                end else begin
                    NS <= S0;
                    HRQ <= 0;
                    MEMW <= 1;
                    MEMR <= 1;
                    AEN <= 0;
                    ADSTB <= 0;
                    TC <= 0;
                    MARK <= 0;
                end
            end

            S1: begin
                if (HLDA) begin
                    NS <= S2;
                end else begin
                    NS <= S1;
                end
            end

            S2: begin
                if (HLDA) begin
                    NS <= S3;
                end else begin
                    NS <= S2;
                end
            end

            S3: begin
                AEN <= 1;
                NS <= S4;
            end

            S4: begin
                MARK <= (count_up % 46 == 0 && count_up != 0);
                TC <= (count_down == 0);
                NS <= S0;
            end

            default: NS <= S0;
        endcase
    end

    // Mode Register logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            A <= 4'b0000;
        end else begin
            A <= EN; // Example: use EN signals to set A4-A7
        end
    end

endmodule
