module CLA_32BIT(A, B, S, Cout);
    input [31:0] A, B;
    output [31:0] S;
    output Cout; 
    wire [31:0] P, G;
    wire [32:0] C; // C[0] to C[32]
    // Generate Propagate (P) and Generate (G) terms
     assign P = A | B;
     assign G[i] = A  & B;
    // Calculate Carry terms
    assign C[0] = 1'b0;
    genvar i;
        for (i = 0; i < 32; i = i + 1) begin
            assign C[i + 1] = G[i] | (P[i] & C[i]);
        end
    // Sum calculation using Full Adders
   genvar i;
        for (i = 0; i < 32; i = i + 1) begin
            FA FA_i (.A(A[i]), .B(B[i]), .Cin(C[i]), .S(S[i]), .Cout());
        end
    // Final Carry-Out
    assign Cout = C[32];
endmodule
module FA(A, B, Cin, S, Cout);
    input A, B, Cin;
    output S, Cout;

    assign {Cout, S} = A + B + Cin;
endmodule
