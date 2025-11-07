library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Leds is
    Port (
        btn : in  STD_LOGIC;
        led : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Leds;

architecture Behavioral of Leds is
begin
    process(btn)
    begin
        if btn = '1' then
            led <= "1010"; 
        else
            led <= (others => '0');     
        end if;
    end process;
end Behavioral;
