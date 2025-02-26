-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity p_hls_fptosi_double_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of p_hls_fptosi_double_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv11_3FF : STD_LOGIC_VECTOR (10 downto 0) := "01111111111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_53 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010011";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal p_Result_s_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_pipeline_reg_pp0_iter1_p_Result_s_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal loc_V_5_fu_62_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal loc_V_5_reg_181 : STD_LOGIC_VECTOR (51 downto 0);
    signal isNeg_fu_76_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal isNeg_reg_186 : STD_LOGIC_VECTOR (0 downto 0);
    signal sh_assign_4_fu_94_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_4_reg_191 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_13_fu_158_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_13_reg_196 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_fu_40_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal loc_V_fu_52_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_i_i_cast1_fu_66_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sh_assign_fu_70_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_i_202_fu_84_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_i_cast_fu_90_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_12_fu_102_p3 : STD_LOGIC_VECTOR (52 downto 0);
    signal sh_assign_4_cast_fu_113_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_54_i_cast_fu_120_p1 : STD_LOGIC_VECTOR (52 downto 0);
    signal tmp_i_fu_109_p1 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_54_i_fu_116_p1 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_55_i_fu_124_p2 : STD_LOGIC_VECTOR (52 downto 0);
    signal tmp_fu_136_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_56_i_fu_130_p2 : STD_LOGIC_VECTOR (135 downto 0);
    signal tmp_s_fu_144_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_189_fu_148_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_i_fu_165_p2 : STD_LOGIC_VECTOR (31 downto 0);


begin



    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                ap_pipeline_reg_pp0_iter1_p_Result_s_reg_176 <= p_Result_s_reg_176;
                isNeg_reg_186 <= sh_assign_fu_70_p2(11 downto 11);
                loc_V_5_reg_181 <= loc_V_5_fu_62_p1;
                p_Result_s_reg_176 <= p_Val2_s_fu_40_p1(63 downto 63);
                p_Val2_13_reg_196 <= p_Val2_13_fu_158_p3;
                sh_assign_4_reg_191 <= sh_assign_4_fu_94_p3;
            end if;
        end if;
    end process;
    ap_return <= 
        p_Val2_i_fu_165_p2 when (ap_pipeline_reg_pp0_iter1_p_Result_s_reg_176(0) = '1') else 
        p_Val2_13_reg_196;
    isNeg_fu_76_p3 <= sh_assign_fu_70_p2(11 downto 11);
    loc_V_5_fu_62_p1 <= p_Val2_s_fu_40_p1(52 - 1 downto 0);
    loc_V_fu_52_p4 <= p_Val2_s_fu_40_p1(62 downto 52);
    p_Result_12_fu_102_p3 <= (ap_const_lv1_1 & loc_V_5_reg_181);
    p_Val2_13_fu_158_p3 <= 
        tmp_s_fu_144_p1 when (isNeg_reg_186(0) = '1') else 
        tmp_189_fu_148_p4;
    p_Val2_i_fu_165_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(p_Val2_13_reg_196));
    p_Val2_s_fu_40_p1 <= x;
        sh_assign_4_cast_fu_113_p1 <= std_logic_vector(resize(signed(sh_assign_4_reg_191),32));

    sh_assign_4_fu_94_p3 <= 
        tmp_i_cast_fu_90_p1 when (isNeg_fu_76_p3(0) = '1') else 
        sh_assign_fu_70_p2;
    sh_assign_fu_70_p2 <= std_logic_vector(signed(ap_const_lv12_C01) + signed(tmp_i_i_cast1_fu_66_p1));
    tmp_189_fu_148_p4 <= tmp_56_i_fu_130_p2(83 downto 52);
    tmp_54_i_cast_fu_120_p1 <= std_logic_vector(resize(unsigned(sh_assign_4_cast_fu_113_p1),53));
    tmp_54_i_fu_116_p1 <= std_logic_vector(resize(unsigned(sh_assign_4_cast_fu_113_p1),136));
    tmp_55_i_fu_124_p2 <= std_logic_vector(shift_right(unsigned(p_Result_12_fu_102_p3),to_integer(unsigned('0' & tmp_54_i_cast_fu_120_p1(31-1 downto 0)))));
    tmp_56_i_fu_130_p2 <= std_logic_vector(shift_left(unsigned(tmp_i_fu_109_p1),to_integer(unsigned('0' & tmp_54_i_fu_116_p1(31-1 downto 0)))));
    tmp_fu_136_p3 <= tmp_55_i_fu_124_p2(52 downto 52);
    tmp_i_202_fu_84_p2 <= std_logic_vector(unsigned(ap_const_lv11_3FF) - unsigned(loc_V_fu_52_p4));
        tmp_i_cast_fu_90_p1 <= std_logic_vector(resize(signed(tmp_i_202_fu_84_p2),12));

    tmp_i_fu_109_p1 <= std_logic_vector(resize(unsigned(p_Result_12_fu_102_p3),136));
    tmp_i_i_cast1_fu_66_p1 <= std_logic_vector(resize(unsigned(loc_V_fu_52_p4),12));
    tmp_s_fu_144_p1 <= std_logic_vector(resize(unsigned(tmp_fu_136_p3),32));
end behav;
