module counter #(
    parameter WIDTH = 16
) (
    input wire clk, en, rst,
    output reg [$clog2(WIDTH)-1:0] cnt
);

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            cnt <= '0;
        else if( en )
            cnt <= cnt + 1;
        end

endmodule
