//cat > tb_counter.v << 'EOF'
`timescale 1ns/1ps

module tb_counter;
    reg clk;
    reg rst_n;
    reg enable;
    wire [3:0] count;
    wire overflow;
    
    // Instantiate the counter
    counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .count(count),
        .overflow(overflow)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Initial block for simulation
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_counter);
        
        // Initialize signals
        clk = 0;
        rst_n = 0;
        enable = 0;
        
        // Apply reset
        #10 rst_n = 1;
        enable = 1;
        
        // Let counter run for some cycles
        #100;
        
        // Disable and test
        enable = 0;
        #50;
        enable = 1;
        
        // Run until overflow occurs
        wait(overflow);
        #20;
        
        $display("Simulation completed successfully!");
        $finish;
    end
    
    // Monitor to display signals
    always @(posedge clk) begin
        $display("Time: %0t, Count: %d, Overflow: %b", $time, count, overflow);
    end
    
endmodule
EOF
