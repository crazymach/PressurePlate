----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2015 07:15:11 PM
-- Design Name: 
-- Module Name: Source - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Source is
    Port ( P1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           clr : in STD_LOGIC;
           A : out STD_LOGIC;
           led : out STD_LOGIC_vector(1 downto 0);
           clk : in STD_LOGIC);
end Source;

architecture Behavioral of Source is

component sseg_dec is
        Port (     ALU_VAL : in std_logic_vector(7 downto 0); 
                   SIGN : in std_logic;
                   VALID : in std_logic;
                   CLK : in std_logic;
                   DISP_EN : out std_logic_vector(3 downto 0);
                   SEGMENTS : out std_logic_vector(7 downto 0));
end component sseg_dec;

component clk_div2 is
        Port (  clk : in std_logic;
               sclk : out std_logic);
end component clk_div2;

component FSM is
    Port ( X1 : in STD_LOGIC;
           X2 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           clr : in STD_LOGIC;
           Initial : in STD_LOGIC_VECTOR (5 downto 0) := "000000";
                      Final : out STD_LOGIC_VECTOR (5 downto 0);
           Z : out STD_LOGIC;
           U : out STD_LOGIC_vector(1 downto 0));
           
end component FSM; 

--component TCounter is
--    Port ( clk : in STD_LOGIC;
--           inp : in STD_LOGIC;
--           ou : out STD_LOGIC);
--end component TCounter;

component SCounter is
    Port ( clk : in STD_LOGIC;
           Z : in STD_LOGIC;
           Initial : in STD_LOGIC_VECTOR (5 downto 0) := "000000";
           Final : out STD_LOGIC_VECTOR (5 downto 0);
           J : out STD_LOGIC;
           clr : in STD_LOGIC);
           
end component SCounter;

--component Pressure_Pad is
--    Port ( P : in STD_LOGIC;
--           X1 : out STD_LOGIC;
--           clk : in STD_LOGIC;
--           EN : in STD_LOGIC);
--end component Pressure_Pad;

--component dflop is Port(
--           input : in std_logic;   
--           clk : in STD_LOGIC;
           
--           Q : out STD_LOGIC;
--           clr : in STD_LOGIC);
    
           
--    end component dflop;

signal carry1,carry2: STD_LOGIC_VECTOR (5 downto 0);
signal s_clk, Zsig, Jsig, ENsig, CLRsig, X1sig, X2sig : std_logic;

begin

    SG: sseg_dec PORT MAP(alu_val(0) => carry1(0),
                          alu_val(1) => carry1(1),
                          alu_val(2) => carry1(2),
                          alu_val(3) => carry1(3), 
                          alu_val(4) => carry1(4),    
                          alu_val(5) => carry1(5),       
                          alu_val(6) => '0'  ,           
                          alu_val(7) => '0' ,             
                          CLK => CLK, SEGMENTS => seg, DISP_EN => an, sign => '0', valid => '1');
                          
                          
                          

--    SC: SCounter PORT MAP(clk => s_clk, Z => Zsig, Initial => carry1, Final => carry1, J => Jsig, clr => clr);
--    TC: TCounter PORT MAP(clk => s_clk, inp => ENsig, ou => CLRsig);
--    CLOCK: clk_div2 PORT MAP(sclk => s_clk, clk => clk);
    FINITESTATEMACHINE: FSM PORT MAP(X1 => P1, X2 => P2, clk => clk, clr => clr, Z => A, U => led, Initial => carry1, Final => carry1); --EN => ENsig, Z => Zsig, J => Jsig);
--    PS: Pressure_Pad PORT MAP(P => P1, clk => clk, X1 => X1sig, EN => clrsig);
--    PS1: Pressure_Pad PORT MAP(P => P2, clk => clk, X1 => X2sig, EN => clrsig);

--                DF0 : dflop PORT MAP(input => carry2(0),  clk => clk, Q => carry1(0), clr => clr);
--                DF1 : dflop PORT MAP(input => carry2(1),  clk => clk,Q => carry1(1), clr => clr);
--                DF2 : dflop PORT MAP( input => carry2(2), clk => clk, Q => carry1(2), clr => clr);
--                DF3 : dflop PORT MAP( input => carry2(3), clk => clk,  Q => carry1(3), clr => clr);
--                DF4 : dflop PORT MAP( input => carry2(4), clk => clk,  Q => carry1(4), clr => clr);
--                DF5 : dflop PORT MAP( input => carry2(5), clk => clk, Q => carry1(5), clr => clr);

end Behavioral;
