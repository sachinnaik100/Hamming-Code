module hamming_encoder (
    input [3:0] data,      // 4-bit data input
    output [6:0] code      // 7-bit Hamming code output
);

    // Internal wires for parity bits
    wire p1, p2, p3;

    // Calculate parity bits
    assign p1 = data[0] ^ data[1] ^ data[2] ^ data[3];
    assign p2 = data[0] ^ data[1] ^ data[2];
    assign p3 = data[0] ^ data[1] ^ data[3];

    // Generate Hamming code
    assign code[6] = p1;    // Parity bit 1
    assign code[5] = p2;    // Parity bit 2
    assign code[4] = data[0];
    assign code[3] = p3;    // Parity bit 3
    assign code[2] = data[1];
    assign code[1] = data[2];
    assign code[0] = data[3];

endmodule
