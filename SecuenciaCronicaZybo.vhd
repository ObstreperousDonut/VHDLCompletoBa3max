library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BlinkSequence is
    Port (
        clk : in  STD_LOGIC;               
        led : out STD_LOGIC_VECTOR (3 downto 0)  
    );
end BlinkSequence;

architecture Behavioral of BlinkSequence is
    signal counter : unsigned(23 downto 0) := (others => '0');  
    signal state   : unsigned(1 downto 0) := (others => '0');   
begin
    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;

            
            if counter = 0 then
                state <= state + 1;
            end if;
        end if;
    end process;

    with state select
        led <= "0001" when "00",
               "0010" when "01",
               "0100" when "10",
               "1000" when "11",
               "0000" when others;

end Behavioral;
