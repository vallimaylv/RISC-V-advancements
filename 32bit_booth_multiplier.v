module BoothMul32(
    input clk,
    input rst,
    input start,
    input signed [31:0] X,
    input signed [31:0] Y,
    output reg signed [63:0] Z,
    output reg valid
);

    reg signed [63:0] next_Z, Z_temp;
    reg next_state, pres_state;
    reg [1:0] temp, next_temp;
    reg [5:0] count, next_count;  // 6-bit counter to count 32 cycles
    reg next_valid;

    parameter IDLE = 1'b0;
    parameter START = 1'b1;

    always @ (posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            Z <= 64'd0;
            valid <= 1'b0;
            pres_state <= IDLE;
            temp <= 2'd0;
            count <= 6'd0;
        end
        else
        begin
            Z <= next_Z;
            valid <= next_valid;
            pres_state <= next_state;
            temp <= next_temp;
            count <= next_count;
        end
    end

    always @ (*)
    begin 
        case(pres_state)
            IDLE:
            begin
                next_count = 6'b0;
                next_valid = 1'b0;
                if(start)
                begin
                    next_state = START;
                    next_temp  = {X[0], 1'b0};
                    next_Z     = {32'd0, X};
                end
                else
                begin
                    next_state = pres_state;
                    next_temp  = 2'd0;
                    next_Z     = 64'd0;
                end
            end

            START:
            begin
                case(temp)
                    2'b10: Z_temp = {Z[63:32] - Y, Z[31:0]};
                    2'b01: Z_temp = {Z[63:32] + Y, Z[31:0]};
                    default: Z_temp = Z;
                endcase
                
                next_temp  = {X[count+1], X[count]};
                next_count = count + 1'b1;
                next_Z     = Z_temp >>> 1;
                next_valid = (count == 6'd31) ? 1'b1 : 1'b0;
                next_state = (count == 6'd31) ? IDLE : pres_state;
            end
        endcase
    end
endmodule
