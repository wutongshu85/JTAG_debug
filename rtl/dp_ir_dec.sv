/*
*  File            :   dp_ir_dec.sv
*  Autor           :   Vlasov D.V.
*  Data            :   2018.04.01
*  Language        :   SystemVerilog
*  Description     :   This is debug instruction decoder
*  Copyright(c)    :   2018 - 2019 Vlasov D.V.
*/

`include "dp_constants.svh"

module dp_ir_dec 
#(
    parameter                       width = 8
)( 
    input   logic   [width-1 : 0]   p_data_in,
    output  logic   [3       : 0]   sel
);

    always_comb
    begin
        sel = `SEL_ETAP_IDCODE;
        casex( p_data_in )
            `ETAP_IDCODE:        sel = `SEL_ETAP_IDCODE;
            `ETAP_IMPCODE:       sel = `SEL_ETAP_IMPCODE;
            `ETAP_ADDRESS:       sel = `SEL_ETAP_ADDRESS;
            `ETAP_DATA:          sel = `SEL_ETAP_DATA;
            `ETAP_CONTROL:       sel = `SEL_ETAP_CONTROL;
            `ETAP_EJTAGBOOT:     sel = `SEL_ETAP_EJTAGBOOT;
            `BYPASS:             sel = `SEL_BYPASS;
            `SAMPLE_PRELOAD:     sel = `SEL_SAMPLE_PRELOAD;
            `ANY:                sel = `SEL_ANY;
        endcase
    end

endmodule : dp_ir_dec