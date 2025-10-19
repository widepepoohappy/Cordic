module rom_tcell #(
    parameter BITWIDTH = 16,
    parameter DATA_WIDTH = BITWIDTH,
    parameter ADDR_WIDTH = $clog2(BITWIDTH)
) (
    input  logic                  clk,
    input  logic [ADDR_WIDTH-1:0] addr,
    output logic [DATA_WIDTH-1:0] data
);

    // Attributo per forzare inferenza Tcell (esempio per Synopsys Design Compiler)
    (* rom_style = "tcell" *)
    logic [DATA_WIDTH-1:0] rom_array [0:(1<<ADDR_WIDTH)-1] ;


    initial begin
        $readmemb("../src/rom_data.hex", rom_array);
    end
   

    always_ff @(posedge clk) begin
        data <= rom_array[addr];
    end

endmodule
