-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_w3_ROM_eOg is 
    generic(
             DataWidth     : integer := 25; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 144
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_w3_ROM_eOg is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1101011000000000001010010", 1 => "1100100101111111101100011", 2 => "1100000110000000000011111", 3 => "1101100110000000000110100", 
    4 => "1011100111111111110010110", 5 => "1100011001111111101110101", 6 => "1110000011111111111101111", 7 => "1100111111111111111000111", 
    8 => "0001101100000000000001100", 9 => "1101101000000000010000011", 10 => "1011100000000000001011010", 11 => "0011100011111111111011000", 
    12 => "0100000111111111110011111", 13 => "1011000101111111110000100", 14 => "1101100110000000010001111", 15 => "0011110111111111110001100", 
    16 => "1101010100000000001100010", 17 => "1100111010000000010001101", 18 => "0010001101111111111011110", 19 => "1100000010000000001101110", 
    20 => "1110001110000000010010011", 21 => "1111011101111111110011010", 22 => "1110111001111111111010011", 23 => "0000101011111111111111011", 
    24 => "1111000110000000000101111", 25 => "0010011101111111111011100", 26 => "0000101110000000000001110", 27 => "1111001011111111111110001", 
    28 => "0001000100000000000101111", 29 => "1100011101111111110111001", 30 => "1111010111111111110010100", 31 => "1111101011111111111010111", 
    32 => "0011101111111111111100011", 33 => "1011110110000000001111010", 34 => "1101101010000000000111011", 35 => "1100000100000000001110110", 
    36 => "0000101010000000010000100", 37 => "1011011011111111110101111", 38 => "1111001010000000001001100", 39 => "0010011011111111110100101", 
    40 => "0001010110000000010010101", 41 => "1011101001111111111011110", 42 => "0011000100000000001000000", 43 => "0010100010000000000111100", 
    44 => "1100010011111111110110111", 45 => "1101011110000000001111001", 46 => "0011111010000000000000110", 47 => "1011011011111111110111111", 
    48 => "1011101000000000001000001", 49 => "0010101001111111111001101", 50 => "0001111101111111111000110", 51 => "1101011000000000000000001", 
    52 => "0011010011111111111110010", 53 => "1100101111111111110000010", 54 => "0000100111111111111001100", 55 => "1011111110000000001111011", 
    56 => "1011100010000000001000010", 57 => "0010010100000000010001111", 58 => "1110001111111111111100010", 59 => "1101100100000000001010101", 
    60 => "0000001010000000000011100", 61 => "1011110111111111111010111", 62 => "0011000000000000000101101", 63 => "1110011011111111111001010", 
    64 => "0011101011111111111100000", 65 => "0000110111111111111010101", 66 => "1110100011111111111000001", 67 => "0010111110000000001001101", 
    68 => "1101101000000000000110100", 69 => "1011101111111111111110101", 70 => "0000100110000000000100001", 71 => "0010101010000000000110101", 
    72 => "1110100111111111111001110", 73 => "0010101010000000001110100", 74 => "1100101010000000000111001", 75 => "1101100010000000001101101", 
    76 => "1011110110000000001111011", 77 => "0001101000000000001100100", 78 => "0011110011111111111101111", 79 => "0001001000000000000011010", 
    80 => "0100000011111111111011010", 81 => "0001001110000000001111001", 82 => "1111011110000000000000101", 83 => "0010010100000000001000000", 
    84 => "0010010011111111111001100", 85 => "0100101000000000010011001", 86 => "0000000001111111111011011", 87 => "1100101100000000000001101", 
    88 => "0010110010000000010011011", 89 => "0001101110000000000110010", 90 => "1110111010000000001100111", 91 => "0011001111111111111110000", 
    92 => "1101111100000000000001111", 93 => "0010100111111111110110001", 94 => "0000000101111111111100001", 95 => "0010000111111111111010110", 
    96 => "0010010110000000001111010", 97 => "1101000100000000001000010", 98 => "1111111101111111110001110", 99 => "1111001100000000000110000", 
    100 => "0000100001111111111100001", 101 => "0001111010000000001110111", 102 => "1111010001111111111100100", 103 => "1111111111111111110100111", 
    104 => "0011001001111111110001101", 105 => "0001001110000000000101111", 106 => "1111110001111111110110001", 107 => "1110010010000000000011011", 
    108 => "0010010110000000001011110", 109 => "1011101001111111110010011", 110 => "1100111010000000000010100", 111 => "0011000001111111111101110", 
    112 => "0010111011111111110001000", 113 => "0000110111111111110001010", 114 => "1100001000000000001000101", 115 => "0000111101111111101111100", 
    116 => "1110011110000000001011110", 117 => "1111101101111111110010100", 118 => "0100110101111111110111010", 119 => "0000111110000000010000000", 
    120 => "1100000101111111110100110", 121 => "1111011000000000000011100", 122 => "1100001100000000010000000", 123 => "0100110001111111110111001", 
    124 => "1110000110000000010011000", 125 => "1101100110000000001000010", 126 => "1111011100000000000111011", 127 => "1111110000000000001110010", 
    128 => "0010001000000000000001110", 129 => "0011111110000000010001100", 130 => "1111101010000000000100011", 131 => "0000001101111111111110011", 
    132 => "0010100100000000000111111", 133 => "0010111001111111110011010", 134 => "1110011010000000001000000", 135 => "1111101011111111110010100", 
    136 => "0001111111111111110111010", 137 => "0011011100000000001111111", 138 => "1100011000000000000010111", 139 => "1100110010000000001010100", 
    140 => "0011000010000000001100010", 141 => "0000110100000000001111110", 142 => "0011100011111111110110000", 143 => "0100011000000000010011011");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;
