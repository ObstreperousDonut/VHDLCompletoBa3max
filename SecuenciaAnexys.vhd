library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Leds is
    Port (
        btn : in  STD_LOGIC_VECTOR (4 downto 0);
        led : out STD_LOGIC_VECTOR (15 downto 0)
    );
end Leds;

architecture Behavioral of Leds is
begin
    process(btn)
    begin
        if btn(0) = '1' then
            led <= "1010101010101010";
        elsif btn(1) = '1' then
            led <= "0101010101010101";
        elsif btn(2) = '1' then
            led <= "1111111100000000";
        elsif btn(3) = '1' then
            led <= "0000000011111111";
        elsif btn(4) = '1' then
            led <= "0000111111110000";
        else
            led <= (others => '0');  -- Estado inicial: todos apagados
        end if;
    end process;
end Behavioral;
