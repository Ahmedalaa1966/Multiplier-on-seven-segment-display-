module Top (
    input  [3:0] i_a , i_b ,
    output [7:0] o_result_on_leds,
    output [6:0] o_result_units , o_result_tens , o_result_hunds 
);

    wire [3:0] units_bcd , tens_bcd , hunds_bcd ;
    //Module instantiation 
    multiplier mult_inst(.i_a(i_a) , .i_b(i_b) , .o_c(o_result_on_leds)) ;
    BCD BCD_inst(.i_data(o_result_on_leds) , .o_units(units_bcd) , .o_tens(tens_bcd) , .o_hunds(hunds_bcd)) ;
    seven_segment_decoder decoder_inst1(.i_bits(units_bcd) , .o_display(o_result_units)) ;
    seven_segment_decoder decoder_inst2(.i_bits(tens_bcd) , .o_display(o_result_tens)) ;
    seven_segment_decoder decoder_inst3(.i_bits(hunds_bcd) , .o_display(o_result_hunds)) ;

endmodule