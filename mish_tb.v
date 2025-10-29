`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2025 15:14:19
// Design Name: 
// Module Name: mish_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module mish_top_tb;

    // Testbench signals
    reg  [11:0] q57_input;     // 12-bit Q5.7 input
    wire [31:0] mish_output;   // 32-bit Q16.16 output
    integer i;
    // Instantiate the top module
    mish_top uut (
        .q57_input(q57_input),
        .mish_output(mish_output)
    );

    // Generate waveform output
    initial begin
        $dumpfile("mish_top.vcd");   // VCD file for waveform
        $dumpvars(0, mish_top_tb);   // Dump all variables
    end

    // Stimulus
    initial begin

        // Sweep from -10.0 to +10.0 in Q5.7 format
        // Q5.7 step size is 0.0078125, so total steps = 20 / 0.0078125 = 2560
        // Starting from -10.0 (which is -1280 in Q5.7)
        for (i = -1280; i <= 1280; i = i + 1) begin
            q57_input = i[11:0];  // Assign lower 12 bits
            #10;                  // Wait for 10 ns
        end
        $finish;
    end

endmodule
