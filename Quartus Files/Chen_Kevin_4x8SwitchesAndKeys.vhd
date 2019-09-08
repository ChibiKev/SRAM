library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Chen_Kevin_4x8SwitchesAndKeys is
	port(
	Chen_Kevin_Switches : in std_logic_vector(7 downto 0);
	Chen_Kevin_Keys : in std_logic_vector(1 downto 0);
	Chen_Kevin_Output : out std_logic_vector(31 downto 0));
end Chen_Kevin_4x8SwitchesAndKeys;
	
architecture Arch of Chen_Kevin_4x8SwitchesAndKeys is

begin
	process(Chen_Kevin_Keys)
	begin 
	case Chen_Kevin_Keys is
	WHEN "00" =>
	Chen_Kevin_Output(7 downto 0) <= Chen_Kevin_Switches;
	WHEN "01" =>
	Chen_Kevin_Output(15 downto 8) <= Chen_Kevin_Switches;
	WHEN "10" =>
	Chen_Kevin_Output(23 downto 16) <= Chen_Kevin_Switches;
	WHEN "11" =>
	Chen_Kevin_Output(31 downto 24) <= Chen_Kevin_Switches;
	end case;
end process;
end Arch; 