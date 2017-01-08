----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2015 07:22:38 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( X1 : in STD_LOGIC;
           X2 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           clr : in STD_LOGIC;
           Initial : in STD_LOGIC_VECTOR (5 downto 0) := "000000";
           Final : out STD_LOGIC_VECTOR (5 downto 0);
           LED : out STD_LOGIC_vector(1 downto 0);
         
   
end FSM;

architecture Behavioral of FSM is

type state is (P0, P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12, P13, P14, P15, P16, P17, P18, P19, P20, P21, P22, P23, P24, P25, P26, P27, P28, P29, P30, P31, P32, P33, P34, P35, P36, P37, P38, P39, P40, P41, P42, P43, P44, P45, P46, P47, P48, P49, P50, P51, P52, P53, P54, P55, P56, P57, P58, P59, P60, P61, P62, P63, P64, P65, P66, P67, P68, P69, P70, P71, P72, P73, P74, P75, P76, P77, P78, P79, P80, P81, P82, P83, P84, P85, P86, P87, P88, P89, P90, P91, P92, P93, P94, P95, P96, P97, P98, P99, P100, P101, P102, P103, P104, P105, P106, P107, P108, P109, P110, P111, P112, P113, P114, P115, P116, P117, P118, P119, P120, P121, P122, P123, P124, P125, P126, P127);
signal PS,NS : state;

begin

        
    
    Proc1: process (CLK,NS,clr)  
    begin
        if (clr = '1') then
            PS <= P0; 
           
        elsif (rising_edge(CLK)) then PS <= NS;
        end if;
    end process Proc1;
    
    
    Proc2: process (PS,X1,X2)
    begin
        
   
                
     
            
             case PS is
        
            
            when P0 =>
               final <= " 000000";
               if (X1 = '1' and X2 = '0') then NS <= P1;
               else NS <= P0;
               end if;
             when P1 =>
               final <= " 000000";
               if (X1 = '0' and X2 = '1') then NS <= P2;
               else NS <= P1;
               end if;
             when P2 =>
               final <= " 000001";
               if (X1 = '1' and X2 = '0') then NS <= P3;
               else NS <= P2;
               end if;
             when P3 =>
               final <= " 000001";
               if (X1 = '0' and X2 = '1') then NS <= P4;
               else NS <= P3;
               end if;
             when P4 =>
               final <= " 000010";
               if (X1 = '1' and X2 = '0') then NS <= P5;
               else NS <= P4;
               end if;
             when P5 =>
               final <= " 000010";
               if (X1 = '0' and X2 = '1') then NS <= P6;
               else NS <= P5;
               end if;
             when P6 =>
               final <= " 000011";
               if (X1 = '1' and X2 = '0') then NS <= P7;
               else NS <= P6;
               end if;
             when P7 =>
               final <= " 000011";
               if (X1 = '0' and X2 = '1') then NS <= P8;
               else NS <= P7;
               end if;
             when P8 =>
               final <= " 000100";
               if (X1 = '1' and X2 = '0') then NS <= P9;
               else NS <= P8;
               end if;
             when P9 =>
               final <= " 000100";
               if (X1 = '0' and X2 = '1') then NS <= P10;
               else NS <= P9;
               end if;
             when P10 =>
               final <= " 000101";
               if (X1 = '1' and X2 = '0') then NS <= P11;
               else NS <= P10;
               end if;
             when P11 =>
               final <= " 000101";
               if (X1 = '0' and X2 = '1') then NS <= P12;
               else NS <= P11;
               end if;
             when P12 =>
               final <= " 000110";
               if (X1 = '1' and X2 = '0') then NS <= P13;
               else NS <= P12;
               end if;
             when P13 =>
               final <= " 000110";
               if (X1 = '0' and X2 = '1') then NS <= P14;
               else NS <= P13;
               end if;
             when P14 =>
               final <= " 000111";
               if (X1 = '1' and X2 = '0') then NS <= P15;
               else NS <= P14;
               end if;
             when P15 =>
               final <= " 000111";
               if (X1 = '0' and X2 = '1') then NS <= P16;
               else NS <= P15;
               end if;
             when P16 =>
               final <= " 001000";
               if (X1 = '1' and X2 = '0') then NS <= P17;
               else NS <= P16;
               end if;
             when P17 =>
               final <= " 001000";
               if (X1 = '0' and X2 = '1') then NS <= P18;
               else NS <= P17;
               end if;
             when P18 =>
               final <= " 001001";
               if (X1 = '1' and X2 = '0') then NS <= P19;
               else NS <= P18;
               end if;
             when P19 =>
               final <= " 001001";
               if (X1 = '0' and X2 = '1') then NS <= P20;
               else NS <= P19;
               end if;
             when P20 =>
               final <= " 001010";
               if (X1 = '1' and X2 = '0') then NS <= P21;
               else NS <= P20;
               end if;
             when P21 =>
               final <= " 001010";
               if (X1 = '0' and X2 = '1') then NS <= P22;
               else NS <= P21;
               end if;
             when P22 =>
               final <= " 001011";
               if (X1 = '1' and X2 = '0') then NS <= P23;
               else NS <= P22;
               end if;
             when P23 =>
               final <= " 001011";
               if (X1 = '0' and X2 = '1') then NS <= P24;
               else NS <= P23;
               end if;
             when P24 =>
               final <= " 001100";
               if (X1 = '1' and X2 = '0') then NS <= P25;
               else NS <= P24;
               end if;
             when P25 =>
               final <= " 001100";
               if (X1 = '0' and X2 = '1') then NS <= P26;
               else NS <= P25;
               end if;
             when P26 =>
               final <= " 001101";
               if (X1 = '1' and X2 = '0') then NS <= P27;
               else NS <= P26;
               end if;
             when P27 =>
               final <= " 001101";
               if (X1 = '0' and X2 = '1') then NS <= P28;
               else NS <= P27;
               end if;
             when P28 =>
               final <= " 001110";
               if (X1 = '1' and X2 = '0') then NS <= P29;
               else NS <= P28;
               end if;
             when P29 =>
               final <= " 001110";
               if (X1 = '0' and X2 = '1') then NS <= P30;
               else NS <= P29;
               end if;
             when P30 =>
               final <= " 001111";
               if (X1 = '1' and X2 = '0') then NS <= P31;
               else NS <= P30;
               end if;
             when P31 =>
               final <= " 001111";
               if (X1 = '0' and X2 = '1') then NS <= P32;
               else NS <= P31;
               end if;
             when P32 =>
               final <= " 010000";
               if (X1 = '1' and X2 = '0') then NS <= P33;
               else NS <= P32;
               end if;
             when P33 =>
               final <= " 010000";
               if (X1 = '0' and X2 = '1') then NS <= P34;
               else NS <= P33;
               end if;
             when P34 =>
               final <= " 010001";
               if (X1 = '1' and X2 = '0') then NS <= P35;
               else NS <= P34;
               end if;
             when P35 =>
               final <= " 010001";
               if (X1 = '0' and X2 = '1') then NS <= P36;
               else NS <= P35;
               end if;
             when P36 =>
               final <= " 010010";
               if (X1 = '1' and X2 = '0') then NS <= P37;
               else NS <= P36;
               end if;
             when P37 =>
               final <= " 010010";
               if (X1 = '0' and X2 = '1') then NS <= P38;
               else NS <= P37;
               end if;
             when P38 =>
               final <= " 010011";
               if (X1 = '1' and X2 = '0') then NS <= P39;
               else NS <= P38;
               end if;
             when P39 =>
               final <= " 010011";
               if (X1 = '0' and X2 = '1') then NS <= P40;
               else NS <= P39;
               end if;
             when P40 =>
               final <= " 010100";
               if (X1 = '1' and X2 = '0') then NS <= P41;
               else NS <= P40;
               end if;
             when P41 =>
               final <= " 010100";
               if (X1 = '0' and X2 = '1') then NS <= P42;
               else NS <= P41;
               end if;
             when P42 =>
               final <= " 010101";
               if (X1 = '1' and X2 = '0') then NS <= P43;
               else NS <= P42;
               end if;
             when P43 =>
               final <= " 010101";
               if (X1 = '0' and X2 = '1') then NS <= P44;
               else NS <= P43;
               end if;
             when P44 =>
               final <= " 010110";
               if (X1 = '1' and X2 = '0') then NS <= P45;
               else NS <= P44;
               end if;
             when P45 =>
               final <= " 010110";
               if (X1 = '0' and X2 = '1') then NS <= P46;
               else NS <= P45;
               end if;
             when P46 =>
               final <= " 010111";
               if (X1 = '1' and X2 = '0') then NS <= P47;
               else NS <= P46;
               end if;
             when P47 =>
               final <= " 010111";
               if (X1 = '0' and X2 = '1') then NS <= P48;
               else NS <= P47;
               end if;
             when P48 =>
               final <= " 011000";
               if (X1 = '1' and X2 = '0') then NS <= P49;
               else NS <= P48;
               end if;
             when P49 =>
               final <= " 011000";
               if (X1 = '0' and X2 = '1') then NS <= P50;
               else NS <= P49;
               end if;
             when P50 =>
               final <= " 011001";
               if (X1 = '1' and X2 = '0') then NS <= P51;
               else NS <= P50;
               end if;
             when P51 =>
               final <= " 011001";
               if (X1 = '0' and X2 = '1') then NS <= P52;
               else NS <= P51;
               end if;
             when P52 =>
               final <= " 011010";
               if (X1 = '1' and X2 = '0') then NS <= P53;
               else NS <= P52;
               end if;
             when P53 =>
               final <= " 011010";
               if (X1 = '0' and X2 = '1') then NS <= P54;
               else NS <= P53;
               end if;
             when P54 =>
               final <= " 011011";
               if (X1 = '1' and X2 = '0') then NS <= P55;
               else NS <= P54;
               end if;
             when P55 =>
               final <= " 011011";
               if (X1 = '0' and X2 = '1') then NS <= P56;
               else NS <= P55;
               end if;
             when P56 =>
               final <= " 011100";
               if (X1 = '1' and X2 = '0') then NS <= P57;
               else NS <= P56;
               end if;
             when P57 =>
               final <= " 011100";
               if (X1 = '0' and X2 = '1') then NS <= P58;
               else NS <= P57;
               end if;
             when P58 =>
               final <= " 011101";
               if (X1 = '1' and X2 = '0') then NS <= P59;
               else NS <= P58;
               end if;
             when P59 =>
               final <= " 011101";
               if (X1 = '0' and X2 = '1') then NS <= P60;
               else NS <= P59;
               end if;
             when P60 =>
               final <= " 011110";
               if (X1 = '1' and X2 = '0') then NS <= P61;
               else NS <= P60;
               end if;
             when P61 =>
               final <= " 011110";
               if (X1 = '0' and X2 = '1') then NS <= P62;
               else NS <= P61;
               end if;
             when P62 =>
               final <= " 011111";
               if (X1 = '1' and X2 = '0') then NS <= P63;
               else NS <= P62;
               end if;
             when P63 =>
               final <= " 011111";
               if (X1 = '0' and X2 = '1') then NS <= P64;
               else NS <= P63;
               end if;
             when P64 =>
               final <= " 100000";
               if (X1 = '1' and X2 = '0') then NS <= P65;
               else NS <= P64;
               end if;
             when P65 =>
               final <= " 100000";
               if (X1 = '0' and X2 = '1') then NS <= P66;
               else NS <= P65;
               end if;
             when P66 =>
               final <= " 100001";
               if (X1 = '1' and X2 = '0') then NS <= P67;
               else NS <= P66;
               end if;
             when P67 =>
               final <= " 100001";
               if (X1 = '0' and X2 = '1') then NS <= P68;
               else NS <= P67;
               end if;
             when P68 =>
               final <= " 100010";
               if (X1 = '1' and X2 = '0') then NS <= P69;
               else NS <= P68;
               end if;
             when P69 =>
               final <= " 100010";
               if (X1 = '0' and X2 = '1') then NS <= P70;
               else NS <= P69;
               end if;
             when P70 =>
               final <= " 100011";
               if (X1 = '1' and X2 = '0') then NS <= P71;
               else NS <= P70;
               end if;
             when P71 =>
               final <= " 100011";
               if (X1 = '0' and X2 = '1') then NS <= P72;
               else NS <= P71;
               end if;
             when P72 =>
               final <= " 100100";
               if (X1 = '1' and X2 = '0') then NS <= P73;
               else NS <= P72;
               end if;
             when P73 =>
               final <= " 100100";
               if (X1 = '0' and X2 = '1') then NS <= P74;
               else NS <= P73;
               end if;
             when P74 =>
               final <= " 100101";
               if (X1 = '1' and X2 = '0') then NS <= P75;
               else NS <= P74;
               end if;
             when P75 =>
               final <= " 100101";
               if (X1 = '0' and X2 = '1') then NS <= P76;
               else NS <= P75;
               end if;
             when P76 =>
               final <= " 100110";
               if (X1 = '1' and X2 = '0') then NS <= P77;
               else NS <= P76;
               end if;
             when P77 =>
               final <= " 100110";
               if (X1 = '0' and X2 = '1') then NS <= P78;
               else NS <= P77;
               end if;
             when P78 =>
               final <= " 100111";
               if (X1 = '1' and X2 = '0') then NS <= P79;
               else NS <= P78;
               end if;
             when P79 =>
               final <= " 100111";
               if (X1 = '0' and X2 = '1') then NS <= P80;
               else NS <= P79;
               end if;
             when P80 =>
               final <= " 101000";
               if (X1 = '1' and X2 = '0') then NS <= P81;
               else NS <= P80;
               end if;
             when P81 =>
               final <= " 101000";
               if (X1 = '0' and X2 = '1') then NS <= P82;
               else NS <= P81;
               end if;
             when P82 =>
               final <= " 101001";
               if (X1 = '1' and X2 = '0') then NS <= P83;
               else NS <= P82;
               end if;
             when P83 =>
               final <= " 101001";
               if (X1 = '0' and X2 = '1') then NS <= P84;
               else NS <= P83;
               end if;
             when P84 =>
               final <= " 101010";
               if (X1 = '1' and X2 = '0') then NS <= P85;
               else NS <= P84;
               end if;
             when P85 =>
               final <= " 101010";
               if (X1 = '0' and X2 = '1') then NS <= P86;
               else NS <= P85;
               end if;
             when P86 =>
               final <= " 101011";
               if (X1 = '1' and X2 = '0') then NS <= P87;
               else NS <= P86;
               end if;
             when P87 =>
               final <= " 101011";
               if (X1 = '0' and X2 = '1') then NS <= P88;
               else NS <= P87;
               end if;
             when P88 =>
               final <= " 101100";
               if (X1 = '1' and X2 = '0') then NS <= P89;
               else NS <= P88;
               end if;
             when P89 =>
               final <= " 101100";
               if (X1 = '0' and X2 = '1') then NS <= P90;
               else NS <= P89;
               end if;
             when P90 =>
               final <= " 101101";
               if (X1 = '1' and X2 = '0') then NS <= P91;
               else NS <= P90;
               end if;
             when P91 =>
               final <= " 101101";
               if (X1 = '0' and X2 = '1') then NS <= P92;
               else NS <= P91;
               end if;
             when P92 =>
               final <= " 101110";
               if (X1 = '1' and X2 = '0') then NS <= P93;
               else NS <= P92;
               end if;
             when P93 =>
               final <= " 101110";
               if (X1 = '0' and X2 = '1') then NS <= P94;
               else NS <= P93;
               end if;
             when P94 =>
               final <= " 101111";
               if (X1 = '1' and X2 = '0') then NS <= P95;
               else NS <= P94;
               end if;
             when P95 =>
               final <= " 101111";
               if (X1 = '0' and X2 = '1') then NS <= P96;
               else NS <= P95;
               end if;
             when P96 =>
               final <= " 110000";
               if (X1 = '1' and X2 = '0') then NS <= P97;
               else NS <= P96;
               end if;
             when P97 =>
               final <= " 110000";
               if (X1 = '0' and X2 = '1') then NS <= P98;
               else NS <= P97;
               end if;
             when P98 =>
               final <= " 110001";
               if (X1 = '1' and X2 = '0') then NS <= P99;
               else NS <= P98;
               end if;
             when P99 =>
               final <= " 110001";
               if (X1 = '0' and X2 = '1') then NS <= P100;
               else NS <= P99;
               end if;
             when P100 =>
               final <= " 110010";
               if (X1 = '1' and X2 = '0') then NS <= P101;
               else NS <= P100;
               end if;
             when P101 =>
               final <= " 110010";
               if (X1 = '0' and X2 = '1') then NS <= P102;
               else NS <= P101;
               end if;
             when P102 =>
               final <= " 110011";
               if (X1 = '1' and X2 = '0') then NS <= P103;
               else NS <= P102;
               end if;
             when P103 =>
               final <= " 110011";
               if (X1 = '0' and X2 = '1') then NS <= P104;
               else NS <= P103;
               end if;
             when P104 =>
               final <= " 110100";
               if (X1 = '1' and X2 = '0') then NS <= P105;
               else NS <= P104;
               end if;
             when P105 =>
               final <= " 110100";
               if (X1 = '0' and X2 = '1') then NS <= P106;
               else NS <= P105;
               end if;
             when P106 =>
               final <= " 110101";
               if (X1 = '1' and X2 = '0') then NS <= P107;
               else NS <= P106;
               end if;
             when P107 =>
               final <= " 110101";
               if (X1 = '0' and X2 = '1') then NS <= P108;
               else NS <= P107;
               end if;
             when P108 =>
               final <= " 110110";
               if (X1 = '1' and X2 = '0') then NS <= P109;
               else NS <= P108;
               end if;
             when P109 =>
               final <= " 110110";
               if (X1 = '0' and X2 = '1') then NS <= P110;
               else NS <= P109;
               end if;
             when P110 =>
               final <= " 110111";
               if (X1 = '1' and X2 = '0') then NS <= P111;
               else NS <= P110;
               end if;
             when P111 =>
               final <= " 110111";
               if (X1 = '0' and X2 = '1') then NS <= P112;
               else NS <= P111;
               end if;
             when P112 =>
               final <= " 111000";
               if (X1 = '1' and X2 = '0') then NS <= P113;
               else NS <= P112;
               end if;
             when P113 =>
               final <= " 111000";
               if (X1 = '0' and X2 = '1') then NS <= P114;
               else NS <= P113;
               end if;
             when P114 =>
               final <= " 111001";
               if (X1 = '1' and X2 = '0') then NS <= P115;
               else NS <= P114;
               end if;
             when P115 =>
               final <= " 111001";
               if (X1 = '0' and X2 = '1') then NS <= P116;
               else NS <= P115;
               end if;
             when P116 =>
               final <= " 111010";
               if (X1 = '1' and X2 = '0') then NS <= P117;
               else NS <= P116;
               end if;
             when P117 =>
               final <= " 111010";
               if (X1 = '0' and X2 = '1') then NS <= P118;
               else NS <= P117;
               end if;
             when P118 =>
               final <= " 111011";
               if (X1 = '1' and X2 = '0') then NS <= P119;
               else NS <= P118;
               end if;
             when P119 =>
               final <= " 111011";
               if (X1 = '0' and X2 = '1') then NS <= P120;
               else NS <= P119;
               end if;
             when P120 =>
               final <= " 111100";
               if (X1 = '1' and X2 = '0') then NS <= P121;
               else NS <= P120;
               end if;
             when P121 =>
               final <= " 111100";
               if (X1 = '0' and X2 = '1') then NS <= P122;
               else NS <= P121;
               end if;
             when P122 =>
               final <= " 111101";
               if (X1 = '1' and X2 = '0') then NS <= P123;
               else NS <= P122;
               end if;
             when P123 =>
               final <= " 111101";
               if (X1 = '0' and X2 = '1') then NS <= P124;
               else NS <= P123;
               end if;
             when P124 =>
               final <= " 111110";
               if (X1 = '1' and X2 = '0') then NS <= P125;
               else NS <= P124;
               end if;
             when P125 =>
               final <= " 111110";
               if (X1 = '0' and X2 = '1') then NS <= P126;
               else NS <= P125;
               end if;
             when P126 =>
               final <= " 111111";
               if (X1 = '1' and X2 = '0') then NS <= P127;
               else NS <= P126;
               end if;
             when P127 =>
               final <= " 111111";
               if (X1 = '0' and X2 = '1') then NS <= P0;
               else NS <= P127;
               end if;                                
                      
  
            when others => NS <= P0; Final <= "000000";

            
        end case;
--                                    end loop;


    end process Proc2;
    
                with PS select
                U <= "0000000" when P0,
                 "0000001" when P1,
                 "0000010" when P2,
                 "0000011" when P3,
                 "0000100" when P4,
                 "0000101" when P5,
                 "0000110" when P6,
                 "0000111" when P7,
                 "0001000" when P8,
                 "0001001" when P9,
                 "0001010" when P10,
                 "0001011" when P11,
                 "0001100" when P12,
                 "0001101" when P13,
                 "0001110" when P14,
                 "0001111" when P15,
                 "0010000" when P16,
                 "0010001" when P17,
                 "0010010" when P18,
                 "0010011" when P19,
                 "0010100" when P20,
                 "0010101" when P21,
                 "0010110" when P22,
                 "0010111" when P23,
                 "0011000" when P24,
                 "0011001" when P25,
                 "0011010" when P26,
                 "0011011" when P27,
                 "0011100" when P28,
                 "0011101" when P29,
                 "0011110" when P30,
                 "0011111" when P31,
                 "0100000" when P32,
                 "0100001" when P33,
                 "0100010" when P34,
                 "0100011" when P35,
                 "0100100" when P36,
                 "0100101" when P37,
                 "0100110" when P38,
                 "0100111" when P39,
                 "0101000" when P40,
                 "0101001" when P41,
                 "0101010" when P42,
                 "0101011" when P43,
                 "0101100" when P44,
                 "0101101" when P45,
                 "0101110" when P46,
                 "0101111" when P47,
                 "0110000" when P48,
                 "0110001" when P49,
                 "0110010" when P50,
                 "0110011" when P51,
                 "0110100" when P52,
                 "0110101" when P53,
                 "0110110" when P54,
                 "0110111" when P55,
                 "0111000" when P56,
                 "0111001" when P57,
                 "0111010" when P58,
                 "0111011" when P59,
                 "0111100" when P60,
                 "0111101" when P61,
                 "0111110" when P62,
                 "0111111" when P63,
                 "1000000" when P64,
                 "1000001" when P65,
                 "1000010" when P66,
                 "1000011" when P67,
                 "1000100" when P68,
                 "1000101" when P69,
                 "1000110" when P70,
                 "1000111" when P71,
                 "1001000" when P72,
                 "1001001" when P73,
                 "1001010" when P74,
                 "1001011" when P75,
                 "1001100" when P76,
                 "1001101" when P77,
                 "1001110" when P78,
                 "1001111" when P79,
                 "1010000" when P80,
                 "1010001" when P81,
                 "1010010" when P82,
                 "1010011" when P83,
                 "1010100" when P84,
                 "1010101" when P85,
                 "1010110" when P86,
                 "1010111" when P87,
                 "1011000" when P88,
                 "1011001" when P89,
                 "1011010" when P90,
                 "1011011" when P91,
                 "1011100" when P92,
                 "1011101" when P93,
                 "1011110" when P94,
                 "1011111" when P95,
                 "1100000" when P96,
                 "1100001" when P97,
                 "1100010" when P98,
                 "1100011" when P99,
                 "1100100" when P100,
                 "1100101" when P101,
                 "1100110" when P102,
                 "1100111" when P103,
                 "1101000" when P104,
                 "1101001" when P105,
                 "1101010" when P106,
                 "1101011" when P107,
                 "1101100" when P108,
                 "1101101" when P109,
                 "1101110" when P110,
                 "1101111" when P111,
                 "1110000" when P112,
                 "1110001" when P113,
                 "1110010" when P114,
                 "1110011" when P115,
                 "1110100" when P116,
                 "1110101" when P117,
                 "1110110" when P118,
                 "1110111" when P119,
                 "1111000" when P120,
                 "1111001" when P121,
                 "1111010" when P122,
                 "1111011" when P123,
                 "1111100" when P124,
                 "1111101" when P125,
                 "1111110" when P126,
                 "1111111" when P127,
            
               "00" when others; 
     

end Behavioral;
