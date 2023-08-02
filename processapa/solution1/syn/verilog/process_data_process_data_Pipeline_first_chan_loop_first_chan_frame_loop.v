// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module process_data_process_data_Pipeline_first_chan_loop_first_chan_frame_loop (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ave_address0,
        ave_ce0,
        ave_we0,
        ave_d0,
        adc_vectors_address0,
        adc_vectors_ce0,
        adc_vectors_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] ave_address0;
output   ave_ce0;
output   ave_we0;
output  [13:0] ave_d0;
output  [20:0] adc_vectors_address0;
output   adc_vectors_ce0;
input  [13:0] adc_vectors_q0;

reg ap_idle;
reg ave_ce0;
reg ave_we0;
reg adc_vectors_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln249_fu_124_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln255_fu_148_p2;
reg   [0:0] icmp_ln255_reg_294;
reg   [0:0] icmp_ln255_reg_294_pp0_iter1_reg;
reg   [0:0] icmp_ln255_reg_294_pp0_iter2_reg;
reg   [0:0] icmp_ln255_reg_294_pp0_iter3_reg;
wire   [6:0] select_ln249_fu_154_p3;
reg   [6:0] select_ln249_reg_299;
reg   [6:0] select_ln249_reg_299_pp0_iter1_reg;
wire   [8:0] select_ln249_2_fu_162_p3;
reg   [8:0] select_ln249_2_reg_304;
reg   [8:0] select_ln249_2_reg_304_pp0_iter1_reg;
reg   [8:0] select_ln249_2_reg_304_pp0_iter2_reg;
reg   [8:0] select_ln249_2_reg_304_pp0_iter3_reg;
wire   [0:0] ifzero_fu_180_p2;
reg   [0:0] ifzero_reg_314;
reg   [0:0] ifzero_reg_314_pp0_iter1_reg;
reg   [0:0] ifzero_reg_314_pp0_iter2_reg;
reg   [0:0] ifzero_reg_314_pp0_iter3_reg;
wire   [63:0] zext_ln257_1_fu_204_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln249_fu_218_p1;
reg   [20:0] sum_fu_54;
wire   [20:0] sum_1_fu_226_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_58;
wire   [6:0] add_ln255_fu_174_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [8:0] iChan_fu_62;
reg   [8:0] ap_sig_allocacmp_iChan_load;
reg   [14:0] indvar_flatten_fu_66;
wire   [14:0] add_ln249_fu_130_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [20:0] mul_ln259_fu_96_p0;
wire   [22:0] mul_ln259_fu_96_p1;
wire   [8:0] iChan_3_fu_142_p2;
wire   [20:0] grp_fu_253_p3;
wire   [20:0] adc_vectors_load_cast48_fu_222_p1;
wire   [20:0] select_ln249_1_fu_211_p3;
wire   [42:0] mul_ln259_fu_96_p2;
wire   [8:0] grp_fu_253_p0;
wire   [12:0] grp_fu_253_p1;
wire   [6:0] grp_fu_253_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [20:0] grp_fu_253_p00;
wire   [20:0] grp_fu_253_p20;
wire   [42:0] mul_ln259_fu_96_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

process_data_mul_21ns_23ns_43_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 21 ),
    .din1_WIDTH( 23 ),
    .dout_WIDTH( 43 ))
mul_21ns_23ns_43_1_1_U7(
    .din0(mul_ln259_fu_96_p0),
    .din1(mul_ln259_fu_96_p1),
    .dout(mul_ln259_fu_96_p2)
);

process_data_mac_muladd_9ns_13ns_7ns_21_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 13 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 21 ))
mac_muladd_9ns_13ns_7ns_21_4_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_253_p0),
    .din1(grp_fu_253_p1),
    .din2(grp_fu_253_p2),
    .ce(1'b1),
    .dout(grp_fu_253_p3)
);

process_data_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln249_fu_124_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            iChan_fu_62 <= select_ln249_2_fu_162_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            iChan_fu_62 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln249_fu_124_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_58 <= add_ln255_fu_174_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_58 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln249_fu_124_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_66 <= add_ln249_fu_130_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_66 <= 15'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            sum_fu_54 <= 21'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            sum_fu_54 <= sum_1_fu_226_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln255_reg_294_pp0_iter1_reg <= icmp_ln255_reg_294;
        ifzero_reg_314_pp0_iter1_reg <= ifzero_reg_314;
        select_ln249_2_reg_304_pp0_iter1_reg <= select_ln249_2_reg_304;
        select_ln249_reg_299_pp0_iter1_reg <= select_ln249_reg_299;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln255_reg_294_pp0_iter2_reg <= icmp_ln255_reg_294_pp0_iter1_reg;
        icmp_ln255_reg_294_pp0_iter3_reg <= icmp_ln255_reg_294_pp0_iter2_reg;
        ifzero_reg_314_pp0_iter2_reg <= ifzero_reg_314_pp0_iter1_reg;
        ifzero_reg_314_pp0_iter3_reg <= ifzero_reg_314_pp0_iter2_reg;
        select_ln249_2_reg_304_pp0_iter2_reg <= select_ln249_2_reg_304_pp0_iter1_reg;
        select_ln249_2_reg_304_pp0_iter3_reg <= select_ln249_2_reg_304_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln249_fu_124_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln255_reg_294 <= icmp_ln255_fu_148_p2;
        ifzero_reg_314 <= ifzero_fu_180_p2;
        select_ln249_2_reg_304 <= select_ln249_2_fu_162_p3;
        select_ln249_reg_299 <= select_ln249_fu_154_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        adc_vectors_ce0 = 1'b1;
    end else begin
        adc_vectors_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln249_fu_124_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_iChan_load = 9'd0;
    end else begin
        ap_sig_allocacmp_iChan_load = iChan_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ave_ce0 = 1'b1;
    end else begin
        ave_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (ifzero_reg_314_pp0_iter3_reg == 1'd1))) begin
        ave_we0 = 1'b1;
    end else begin
        ave_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign adc_vectors_address0 = zext_ln257_1_fu_204_p1;

assign adc_vectors_load_cast48_fu_222_p1 = adc_vectors_q0;

assign add_ln249_fu_130_p2 = (ap_sig_allocacmp_indvar_flatten_load + 15'd1);

assign add_ln255_fu_174_p2 = (select_ln249_fu_154_p3 + 7'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ave_address0 = zext_ln249_fu_218_p1;

assign ave_d0 = {{mul_ln259_fu_96_p2[41:28]}};

assign grp_fu_253_p0 = grp_fu_253_p00;

assign grp_fu_253_p00 = select_ln249_2_fu_162_p3;

assign grp_fu_253_p1 = 21'd6000;

assign grp_fu_253_p2 = grp_fu_253_p20;

assign grp_fu_253_p20 = select_ln249_reg_299_pp0_iter1_reg;

assign iChan_3_fu_142_p2 = (ap_sig_allocacmp_iChan_load + 9'd1);

assign icmp_ln249_fu_124_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 15'd25600) ? 1'b1 : 1'b0);

assign icmp_ln255_fu_148_p2 = ((ap_sig_allocacmp_i_load == 7'd100) ? 1'b1 : 1'b0);

assign ifzero_fu_180_p2 = ((add_ln255_fu_174_p2 == 7'd100) ? 1'b1 : 1'b0);

assign mul_ln259_fu_96_p0 = mul_ln259_fu_96_p00;

assign mul_ln259_fu_96_p00 = sum_1_fu_226_p2;

assign mul_ln259_fu_96_p1 = 43'd2684355;

assign select_ln249_1_fu_211_p3 = ((icmp_ln255_reg_294_pp0_iter3_reg[0:0] == 1'b1) ? 21'd0 : sum_fu_54);

assign select_ln249_2_fu_162_p3 = ((icmp_ln255_fu_148_p2[0:0] == 1'b1) ? iChan_3_fu_142_p2 : ap_sig_allocacmp_iChan_load);

assign select_ln249_fu_154_p3 = ((icmp_ln255_fu_148_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);

assign sum_1_fu_226_p2 = (adc_vectors_load_cast48_fu_222_p1 + select_ln249_1_fu_211_p3);

assign zext_ln249_fu_218_p1 = select_ln249_2_reg_304_pp0_iter3_reg;

assign zext_ln257_1_fu_204_p1 = grp_fu_253_p3;

endmodule //process_data_process_data_Pipeline_first_chan_loop_first_chan_frame_loop
