library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port (
        sw : in  STD_LOGIC_VECTOR (1 downto 0);  -- SW0 y SW1
        led : out STD_LOGIC                      -- LED0
    );
end and_gate;

architecture Behavioral of and_gate is
begin
    led <= sw(0) AND sw(1);
end Behavioral;