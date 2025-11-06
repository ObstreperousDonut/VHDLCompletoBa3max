----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2025 03:32:52
-- Design Name: 
-- Module Name: And_Array - Behavioral
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

entity And_Array is
Port (
sw: in STD_LOGIC_VECTOR (3 downto 0);
led: buffer STD_LOGIC_VECTOR (2 downto 0) 
 );
end And_Array;

architecture Behavioral of And_Array is
begin
    led(0) <= sw(0) AND sw(1);
    led(1) <= sw(2) AND sw(3);
    led(2) <= led(0) AND led(1);
end Behavioral;