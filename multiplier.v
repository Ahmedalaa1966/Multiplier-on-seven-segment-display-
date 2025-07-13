module multiplier (
    input [3:0]  i_a, i_b , //inputs to the multiplier 
    output [7:0] o_c       //output of the multiplier
);
    assign o_c = i_a * i_b ;
endmodule