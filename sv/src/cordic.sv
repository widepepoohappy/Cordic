module cordic #(
    parameter BITWIDTH = 16,
    parameter ITERATIONS = 12
)(
    input wire [BITWIDTH-1:0] Angle,
    output wire [BITWIDTH-1:0] X, Y,
    output wire Done,
    input wire clk, en, rst
);
    wire [BITWIDTH-1:0] x_alu_sum;
    wire [BITWIDTH-1:0] y_alu_sum;
    wire [BITWIDTH-1:0] z_alu_sum;
    wire [BITWIDTH-1:0] x_reg_out;
    wire [BITWIDTH-1:0] y_reg_out;
    wire [BITWIDTH-1:0] z_reg_out;
    wire [BITWIDTH-1:0] z_reg_out_n;
    wire [BITWIDTH-1:0] y_reg_out_n;
    wire [BITWIDTH-1:0] x_reg_out_n;
    wire [$clog2(BITWIDTH)-1:0] cnt_out;
    wire [BITWIDTH-1:0] x_shifted;
    wire [BITWIDTH-1:0] y_shifted;
    wire [BITWIDTH-1:0] init_reg_out;
    wire z_sel = init_reg_out[0];
    wire y_sel = init_reg_out[0];
    wire x_sel = init_reg_out[0];
    wire direction = z_reg_out[BITWIDTH-1];
    assign X = x_reg_out;
    assign Y = y_reg_out;
    wire [BITWIDTH-1:0] x_mux_in [1:0];
    assign x_mux_in[1] = x_alu_sum;
    assign x_mux_in[0] = 16'b0100_1101_1011_1010;
    wire [BITWIDTH-1:0] x_mux_out;
    wire [BITWIDTH-1:0] y_mux_in [1:0];
    assign y_mux_in[1] = y_alu_sum;
    assign y_mux_in[0] = '0;
    wire [BITWIDTH-1:0] y_mux_out;
    wire [BITWIDTH-1:0] z_mux_in [1:0];
    assign z_mux_in[1] = z_alu_sum;
    assign z_mux_in[0] = Angle;
    wire [BITWIDTH-1:0] z_mux_out;
    wire [BITWIDTH-1:0] ROM_out;
    wire [BITWIDTH-1:0] Q_init_reg_donotuse;
    wire internal_en = en & ~Done;

    register #( .BITWIDTH(BITWIDTH)) init_reg (
                    .D(16'b1),
                    .clk(clk),
                    .en(internal_en),
                    .rst(rst),
                    .Q(Q_init_reg_donotuse),
                    .Qn(init_reg_out)
                    );
    
    register #( .BITWIDTH(BITWIDTH) ) x_reg (
                    .D(x_mux_out),
                    .clk(clk),
                    .en(internal_en),
                    .rst(rst),
                    .Q(x_reg_out),
                    .Qn(x_reg_out_n)
                    );

    register #(
                    .BITWIDTH(BITWIDTH)
                    ) y_reg (.D(y_mux_out),
                    .clk(clk),
                    .en(internal_en),
                    .rst(rst),
                    .Q(y_reg_out),
                    .Qn(y_reg_out_n)
                    );

    register  #(
                    .BITWIDTH(BITWIDTH)
                    ) z_reg (.D(z_mux_out),
                    .clk(clk),
                    .en(internal_en),
                    .rst(rst),
                    .Q(z_reg_out),
                    .Qn(z_reg_out_n)
                    );

   
    mux #(
                .BITWIDTH(BITWIDTH),
                .NINPUTS(2)
                ) x_mux (
                .In(x_mux_in),
                .Out(x_mux_out),
                .sel(x_sel)
                );
    mux #(
                .BITWIDTH(BITWIDTH),
                .NINPUTS(2)
                ) y_mux (
                .In(y_mux_in),
                .Out(y_mux_out),
                .sel(y_sel)
                ); 

    mux #(
                .BITWIDTH(BITWIDTH),
                .NINPUTS(2)
                ) z_mux (
                .In(z_mux_in),
                .Out(z_mux_out),
                .sel(z_sel)
                ); 

  wire [$clog2(BITWIDTH)-1:0] cnt_out_delay;
  register #(
                    .BITWIDTH($clog2(BITWIDTH))
                    ) delay_count_reg (.D(cnt_out),
                    .clk(clk),
                    .en(internal_en),
                    .rst(rst),
                    .Q(cnt_out_delay)
                    );
  assign Done = &cnt_out;

   counter #(
                .WIDTH(BITWIDTH)
            ) cnt_u (
            .clk(clk),
            .en(internal_en),
            .rst(rst),
            .cnt(cnt_out)
            );
  
  rom_tcell #(.BITWIDTH(16)
            ) atan_rom (
            .clk(clk),
            .addr(cnt_out),
            .data(ROM_out)
            );


   shift_barrel  #(
                    .WIDTH(BITWIDTH)
                ) x_shift_barrel (  
                .In(x_reg_out),
                .s(cnt_out_delay),
                .In_sh(x_shifted)
                );
   shift_barrel  #(
                    .WIDTH(BITWIDTH)
                ) y_shift_barrel (  
                .In(y_reg_out),
                .s(cnt_out_delay),
                .In_sh(y_shifted)
                );

    //double d = (z >= 0) ? 1.0 : -1.0;
    
    ALU    #(
                .BITWIDTH(BITWIDTH)
                ) x_alu (
                .A(x_reg_out),
                .B(y_shifted),
                .en(internal_en),
                .op(~direction),
                .Sum(x_alu_sum)
                );
    ALU    #(
                .BITWIDTH(BITWIDTH)
                ) y_alu (
                .A(y_reg_out),
                .B(x_shifted),
                .en(internal_en),
                .op(direction),
                .Sum(y_alu_sum)
                );
    ALU    #(
                .BITWIDTH(BITWIDTH)
                ) z_alu (
                .A(z_reg_out),
                .B(ROM_out),
                .en(internal_en),
                .op(~direction),
                .Sum(z_alu_sum)
                );


endmodule
