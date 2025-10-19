module cordic_tb;

  // Parametri e segnali di esempio
  reg clk;
  reg rst;
  reg start;
  reg [15:0] x_in, y_in, z_in;
  wire [15:0] x_out, y_out, z_out;

  // Istanziazione del DUT (Device Under Test)
  cordic dut (
    .clk(clk),
    .rst(rst),
    .en(start),
    .Angle(z_in),
    .X(x_out),
    .Y(y_out)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    // Abilita il dump FSDB
    //$fsdbDumpfile("cordic.fsdb");
    //$fsdbDumpvars(0, cordic_tb);

    // Reset
    rst = 0;
    start = 0;
    z_in = 0;
    #12;
    rst = 1;
    #15
    rst = 0;
    z_in = 16'b0110010010001000;
    // Test vector 1
    #10;
    start = 1;
    
    
    #1000;
    $finish;
  end

endmodule
