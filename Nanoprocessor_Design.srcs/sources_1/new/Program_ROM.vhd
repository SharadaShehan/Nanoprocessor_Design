----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2023 03:15:50 PM
-- Design Name: 
-- Module Name: Program_ROM - Behavioral
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
use ieee.numeric_std.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Program_ROM is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           instruction_code : out STD_LOGIC_VECTOR (11 downto 0));
end Program_ROM;

architecture Behavioral of Program_ROM is

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
 
signal twelveSegmant_ROM : rom_type := (  -- Program is hardcoded here.
 "100010000011", -- 0 -- 886
 "100100000001", -- 1 -- 901
 "010100000000", -- 2 -- 500
 "001110010000", -- 3 -- 390
 "000010100000", -- 4 -- A0
 "110010000111", -- 5 -- C87
 "110000000011", -- 6 -- C03
 "101110000000"  -- 7 -- B80

);

begin

instruction_code <= twelveSegmant_ROM(to_integer(unsigned(address)));

end Behavioral;
