module mux #(
    parameter BITWIDTH = 16,
    parameter NINPUTS = 2
)(
    input wire [BITWIDTH-1:0] In[NINPUTS],
    output wire [BITWIDTH-1:0] Out,
    input wire [$clog2(NINPUTS)-1:0] sel
);

    assign Out = In[sel];

endmodule
