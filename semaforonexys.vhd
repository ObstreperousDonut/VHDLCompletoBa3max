library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity semaforo is
    Port (
        clk : in  STD_LOGIC;               
        led : out STD_LOGIC_VECTOR (15 downto 0)  
    );
end Semaforo;

architecture Behavioral of semaforo is
    signal counter : unsigned(25 downto 0) := (others => '0');  
    signal state   : unsigned(3 downto 0) := (others => '0');   
begin
    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;

            -- Cada cierto tiempo cambia el estado
            if counter = 0 then
                state <= state + 1;
            end if;
        end if;
    end process;

    -- Estados del semáforo
    with state select
        led <= "1111111000000000" when "0000",  -- verde
                "1111111000000000" when "0001",  -- verde
                "1111111000000000" when "0010",  -- verde
                "0000000000000000" when "0011",  -- apagado
                "1111111000000000" when "0100",  -- verde
               "0000000000000000" when "0101",  -- apagado
               "1111111000000000" when "0110",  -- verde
               "0000000110000000" when "0111",  -- amarillo 
               "0000000110000000" when "1000",  -- amarillo 
               "0000000001111111" when "1001",  -- Rojo
               "0000000001111111" when "1010",  -- Rojo
               "0000000001111111" when "1011",  -- Rojo
               "0000000001111111" when "1100",  -- Rojo
                "0000000001111111" when "1101",  -- Rojo
                 "0000000001111111" when "1110",  -- Rojo
                  "0000000001111111" when "1111",  -- Rojo
                  "0000" when others; 
               

end Behavioral;
