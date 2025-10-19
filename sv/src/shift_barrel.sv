module shift_barrel #(
    parameter WIDTH = 16
) (
    input  logic signed [WIDTH-1:0] In,
    input  logic [$clog2(WIDTH)-1:0] s,
    output logic signed [WIDTH-1:0] In_sh
);

    always_comb begin
        In_sh = In >> s;
    end

endmodule
