module hamming_7_4_encoder_tb;

    // Inputs
    reg [3:0] data;

    // Outputs
    wire [6:0] code;

    // Instantiate the Hamming (7,4) Encoder
    hamming_7_4_encoder uut (
        .data(data),
        .code(code)
    );

    // Testbench procedure
    initial begin
        // Display header
        $display("Data  | Hamming Code");
        $display("----------------------");

        // Test case 1: data = 4'b0000
        data = 4'b0000;
        #10;
        $display("%b    | %b", data, code);

        // Test case 2: data = 4'b0001
        data = 4'b0001;
        #10;
        $display("%b    | %b", data, code);

        // Test case 3: data = 4'b0010
        data = 4'b0010;
        #10;
        $display("%b    | %b", data, code);

        // Test case 4: data = 4'b0011
        data = 4'b0011;
        #10;
        $display("%b    | %b", data, code);

        // Test case 5: data = 4'b0100
        data = 4'b0100;
        #10;
        $display("%b    | %b", data, code);

        // Test case 6: data = 4'b0101
        data = 4'b0101;
        #10;
        $display("%b    | %b", data, code);

        // Test case 7: data = 4'b0110
        data = 4'b0110;
        #10;
        $display("%b    | %b", data, code);

        // Test case 8: data = 4'b0111
        data = 4'b0111;
        #10;
        $display("%b    | %b", data, code);

        // Finish simulation
        $finish;
    end

endmodule
