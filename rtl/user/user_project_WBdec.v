`default_nettype wire
module WBdecoder (
    // input wire    wb_clk_i,
    // input wire    wb_rst_i,
    input wire    [31:0] wbs_adr_i,
    output reg   wbs_ack_o,
    output reg   [31:0] wbs_dat_o,

    //uart
    input          wbs_ack_uart,
    input         [31:0] wbs_dat_o_uart,  

    //bram
    input           wbs_ack_bram,
    input    [31:0] wbs_dat_o_bram

);


//decoder
    always @(*) begin
        if(wbs_adr_i[31:20] == 12'h380) begin
            wbs_ack_o = wbs_ack_bram;
            wbs_dat_o = wbs_dat_o_bram;          
        end    
        else if(wbs_adr_i[31:20] == 12'h300) begin
            wbs_ack_o = wbs_ack_uart;
            wbs_dat_o = wbs_dat_o_uart;          
        end
        else begin
            wbs_ack_o = 0;
            wbs_dat_o = 0;           
        end                     
    end
    
endmodule
`default_nettype wire

