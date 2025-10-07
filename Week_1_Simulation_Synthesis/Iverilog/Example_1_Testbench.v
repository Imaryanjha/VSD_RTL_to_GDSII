
// nano testbench.v
module testbench;
    reg [3:0] a, b;
    reg [1:0] op;
    wire [3:0] result;
    
    // Instantiate the ALU
    simple_alu alu(.a(a), .b(b), .op(op), .result(result));
    
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench);
        
        // Test cases
        a = 4'b1010; b = 4'b0011; op = 2'b00; #10; // ADD: 10 + 3 = 13
        a = 4'b1010; b = 4'b0011; op = 2'b01; #10; // SUB: 10 - 3 = 7
        a = 4'b1010; b = 4'b0011; op = 2'b10; #10; // AND: 1010 & 0011 = 0010
        a = 4'b1010; b = 4'b0011; op = 2'b11; #10; // OR: 1010 | 0011 = 1011
        
        $display("Simulation completed!");
        $finish;
    end
    
    initial begin
        $monitor("Time=%0t a=%b b=%b op=%b result=%b", 
                 $time, a, b, op, result);
    end
endmodule
