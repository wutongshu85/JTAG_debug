module mux
( 
    input   logic   [1  : 0]    sel,
    output  logic   [7  : 0]    dataout,
    input   logic   [31 : 0]    datain
);
    always_comb
    begin
        dataout = datain[0  +: 8];
        case( sel )
            2'b00: dataout = datain[0  +: 8];
            2'b01: dataout = datain[8  +: 8];
            2'b10: dataout = datain[16 +: 8];
            2'b11: dataout = datain[24 +: 8];
        endcase
    end

endmodule : mux