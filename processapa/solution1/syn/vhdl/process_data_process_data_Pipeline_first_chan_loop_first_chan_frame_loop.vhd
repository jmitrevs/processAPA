-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity process_data_process_data_Pipeline_first_chan_loop_first_chan_frame_loop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ave_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ave_ce0 : OUT STD_LOGIC;
    ave_we0 : OUT STD_LOGIC;
    ave_d0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0 : IN STD_LOGIC_VECTOR (13 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 : OUT STD_LOGIC;
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0 : IN STD_LOGIC_VECTOR (13 downto 0) );
end;


architecture behav of process_data_process_data_Pipeline_first_chan_loop_first_chan_frame_loop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv43_28F5C3 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000001010001111010111000011";
    constant ap_const_lv15_6400 : STD_LOGIC_VECTOR (14 downto 0) := "110010000000000";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv18_2EE : STD_LOGIC_VECTOR (17 downto 0) := "000000001011101110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln104_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln110_fu_261_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln110_reg_441 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln110_reg_441_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln110_reg_441_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln110_reg_441_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln110_reg_441_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln104_2_fu_275_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_2_reg_446 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_2_reg_446_pp0_iter1_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_2_reg_446_pp0_iter2_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_2_reg_446_pp0_iter3_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_2_reg_446_pp0_iter4_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal empty_fu_287_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_456 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_456_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_456_pp0_iter2_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_456_pp0_iter3_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_456_pp0_iter4_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal lshr_ln_reg_461 : STD_LOGIC_VECTOR (3 downto 0);
    signal lshr_ln_reg_461_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal ifzero_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ifzero_reg_466 : STD_LOGIC_VECTOR (0 downto 0);
    signal ifzero_reg_466_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ifzero_reg_466_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ifzero_reg_466_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ifzero_reg_466_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_load_reg_515 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_load_reg_520 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_load_reg_525 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_load_reg_530 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_load_reg_535 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_load_reg_540 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_load_reg_545 : STD_LOGIC_VECTOR (13 downto 0);
    signal process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_load_reg_550 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln112_2_fu_331_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln104_fu_352_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum_fu_76 : STD_LOGIC_VECTOR (20 downto 0);
    signal sum_1_fu_373_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_80 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln110_fu_301_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (6 downto 0);
    signal iChan_fu_84 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_iChan_load : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten_fu_88 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln104_fu_243_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (14 downto 0);
    signal mul_ln114_fu_209_p0 : STD_LOGIC_VECTOR (20 downto 0);
    signal mul_ln114_fu_209_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal iChan_3_fu_255_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln104_fu_267_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_400_p3 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_5_fu_356_p10 : STD_LOGIC_VECTOR (13 downto 0);
    signal zext_ln112_fu_369_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln104_1_fu_345_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal mul_ln114_fu_209_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal grp_fu_400_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_400_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_400_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal grp_fu_400_p00 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_400_p20 : STD_LOGIC_VECTOR (17 downto 0);
    signal mul_ln114_fu_209_p00 : STD_LOGIC_VECTOR (42 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component process_data_mul_21ns_23ns_43_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (20 downto 0);
        din1 : IN STD_LOGIC_VECTOR (22 downto 0);
        dout : OUT STD_LOGIC_VECTOR (42 downto 0) );
    end component;


    component process_data_mux_8_3_14_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (13 downto 0);
        din1 : IN STD_LOGIC_VECTOR (13 downto 0);
        din2 : IN STD_LOGIC_VECTOR (13 downto 0);
        din3 : IN STD_LOGIC_VECTOR (13 downto 0);
        din4 : IN STD_LOGIC_VECTOR (13 downto 0);
        din5 : IN STD_LOGIC_VECTOR (13 downto 0);
        din6 : IN STD_LOGIC_VECTOR (13 downto 0);
        din7 : IN STD_LOGIC_VECTOR (13 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (13 downto 0) );
    end component;


    component process_data_mac_muladd_9ns_10ns_4ns_18_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (8 downto 0);
        din1 : IN STD_LOGIC_VECTOR (9 downto 0);
        din2 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;


    component process_data_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mul_21ns_23ns_43_1_1_U11 : component process_data_mul_21ns_23ns_43_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 21,
        din1_WIDTH => 23,
        dout_WIDTH => 43)
    port map (
        din0 => mul_ln114_fu_209_p0,
        din1 => mul_ln114_fu_209_p1,
        dout => mul_ln114_fu_209_p2);

    mux_8_3_14_1_1_U12 : component process_data_mux_8_3_14_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 14,
        din1_WIDTH => 14,
        din2_WIDTH => 14,
        din3_WIDTH => 14,
        din4_WIDTH => 14,
        din5_WIDTH => 14,
        din6_WIDTH => 14,
        din7_WIDTH => 14,
        din8_WIDTH => 3,
        dout_WIDTH => 14)
    port map (
        din0 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_load_reg_515,
        din1 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_load_reg_520,
        din2 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_load_reg_525,
        din3 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_load_reg_530,
        din4 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_load_reg_535,
        din5 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_load_reg_540,
        din6 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_load_reg_545,
        din7 => process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_load_reg_550,
        din8 => empty_reg_456_pp0_iter4_reg,
        dout => tmp_5_fu_356_p10);

    mac_muladd_9ns_10ns_4ns_18_4_1_U13 : component process_data_mac_muladd_9ns_10ns_4ns_18_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 9,
        din1_WIDTH => 10,
        din2_WIDTH => 4,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_400_p0,
        din1 => grp_fu_400_p1,
        din2 => grp_fu_400_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_400_p3);

    flow_control_loop_pipe_sequential_init_U : component process_data_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    iChan_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln104_fu_237_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    iChan_fu_84 <= select_ln104_2_fu_275_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    iChan_fu_84 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    i_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln104_fu_237_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_80 <= add_ln110_fu_301_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_80 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln104_fu_237_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_88 <= add_ln104_fu_243_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_88 <= ap_const_lv15_0;
                end if;
            end if; 
        end if;
    end process;

    sum_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    sum_fu_76 <= ap_const_lv21_0;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    sum_fu_76 <= sum_1_fu_373_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                empty_reg_456_pp0_iter1_reg <= empty_reg_456;
                icmp_ln110_reg_441_pp0_iter1_reg <= icmp_ln110_reg_441;
                ifzero_reg_466_pp0_iter1_reg <= ifzero_reg_466;
                lshr_ln_reg_461_pp0_iter1_reg <= lshr_ln_reg_461;
                select_ln104_2_reg_446_pp0_iter1_reg <= select_ln104_2_reg_446;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                empty_reg_456_pp0_iter2_reg <= empty_reg_456_pp0_iter1_reg;
                empty_reg_456_pp0_iter3_reg <= empty_reg_456_pp0_iter2_reg;
                empty_reg_456_pp0_iter4_reg <= empty_reg_456_pp0_iter3_reg;
                icmp_ln110_reg_441_pp0_iter2_reg <= icmp_ln110_reg_441_pp0_iter1_reg;
                icmp_ln110_reg_441_pp0_iter3_reg <= icmp_ln110_reg_441_pp0_iter2_reg;
                icmp_ln110_reg_441_pp0_iter4_reg <= icmp_ln110_reg_441_pp0_iter3_reg;
                ifzero_reg_466_pp0_iter2_reg <= ifzero_reg_466_pp0_iter1_reg;
                ifzero_reg_466_pp0_iter3_reg <= ifzero_reg_466_pp0_iter2_reg;
                ifzero_reg_466_pp0_iter4_reg <= ifzero_reg_466_pp0_iter3_reg;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_load_reg_520 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_load_reg_525 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_load_reg_530 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_load_reg_535 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_load_reg_540 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_load_reg_545 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_load_reg_550 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0;
                process_data_int_char_FDHDChannelMapSP_int_adc_vectors_load_reg_515 <= process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0;
                select_ln104_2_reg_446_pp0_iter2_reg <= select_ln104_2_reg_446_pp0_iter1_reg;
                select_ln104_2_reg_446_pp0_iter3_reg <= select_ln104_2_reg_446_pp0_iter2_reg;
                select_ln104_2_reg_446_pp0_iter4_reg <= select_ln104_2_reg_446_pp0_iter3_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln104_fu_237_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                empty_reg_456 <= empty_fu_287_p1;
                icmp_ln110_reg_441 <= icmp_ln110_fu_261_p2;
                ifzero_reg_466 <= ifzero_fu_307_p2;
                lshr_ln_reg_461 <= select_ln104_fu_267_p3(6 downto 3);
                select_ln104_2_reg_446 <= select_ln104_2_fu_275_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln104_fu_243_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv15_1));
    add_ln110_fu_301_p2 <= std_logic_vector(unsigned(select_ln104_fu_267_p3) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln104_fu_237_p2)
    begin
        if (((icmp_ln104_fu_237_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_iChan_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, iChan_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_iChan_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_iChan_load <= iChan_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_80)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_80;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_88)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv15_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_88;
        end if; 
    end process;

    ave_address0 <= zext_ln104_fu_352_p1(8 - 1 downto 0);

    ave_ce0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1))) then 
            ave_ce0 <= ap_const_logic_1;
        else 
            ave_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ave_d0 <= mul_ln114_fu_209_p2(41 downto 28);

    ave_we0_assign_proc : process(ap_enable_reg_pp0_iter5, ap_block_pp0_stage0_11001, ifzero_reg_466_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter5 = ap_const_logic_1) and (ifzero_reg_466_pp0_iter4_reg = ap_const_lv1_1))) then 
            ave_we0 <= ap_const_logic_1;
        else 
            ave_we0 <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_287_p1 <= select_ln104_fu_267_p3(3 - 1 downto 0);
    grp_fu_400_p0 <= grp_fu_400_p00(9 - 1 downto 0);
    grp_fu_400_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln104_2_fu_275_p3),18));
    grp_fu_400_p1 <= ap_const_lv18_2EE(10 - 1 downto 0);
    grp_fu_400_p2 <= grp_fu_400_p20(4 - 1 downto 0);
    grp_fu_400_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_reg_461_pp0_iter1_reg),18));
    iChan_3_fu_255_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_iChan_load) + unsigned(ap_const_lv9_1));
    icmp_ln104_fu_237_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv15_6400) else "0";
    icmp_ln110_fu_261_p2 <= "1" when (ap_sig_allocacmp_i_load = ap_const_lv7_64) else "0";
    ifzero_fu_307_p2 <= "1" when (add_ln110_fu_301_p2 = ap_const_lv7_64) else "0";
    mul_ln114_fu_209_p0 <= mul_ln114_fu_209_p00(21 - 1 downto 0);
    mul_ln114_fu_209_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum_1_fu_373_p2),43));
    mul_ln114_fu_209_p1 <= ap_const_lv43_28F5C3(23 - 1 downto 0);
    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 <= zext_ln112_2_fu_331_p1(18 - 1 downto 0);

    process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 <= ap_const_logic_1;
        else 
            process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln104_1_fu_345_p3 <= 
        ap_const_lv21_0 when (icmp_ln110_reg_441_pp0_iter4_reg(0) = '1') else 
        sum_fu_76;
    select_ln104_2_fu_275_p3 <= 
        iChan_3_fu_255_p2 when (icmp_ln110_fu_261_p2(0) = '1') else 
        ap_sig_allocacmp_iChan_load;
    select_ln104_fu_267_p3 <= 
        ap_const_lv7_0 when (icmp_ln110_fu_261_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    sum_1_fu_373_p2 <= std_logic_vector(unsigned(zext_ln112_fu_369_p1) + unsigned(select_ln104_1_fu_345_p3));
    zext_ln104_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln104_2_reg_446_pp0_iter4_reg),64));
    zext_ln112_2_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_400_p3),64));
    zext_ln112_fu_369_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_356_p10),21));
end behav;