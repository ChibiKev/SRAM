LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;
--Hexadecimal to 7 Segment Decoder for LED Display

ENTITY Chen_Kevin_Dec_to_Hex IS
PORT ( Chen_Kevin_Hex_Digit : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
Chen_Kevin_Segment_A, Chen_Kevin_Segment_B, Chen_Kevin_Segment_C, Chen_Kevin_Segment_D, Chen_Kevin_Segment_E, Chen_Kevin_Segment_F, Chen_Kevin_Segment_G : OUT std_logic);
END Chen_Kevin_Dec_to_Hex;
ARCHITECTURE Arc OF Chen_Kevin_Dec_to_Hex IS
SIGNAL Chen_Kevin_Segment_Data : STD_LOGIC_VECTOR (6 DOWNTO 0);
BEGIN
PROCESS (Chen_Kevin_Hex_Digit)
--HEX to 7 Segment Decoder for LED Display
BEGIN -- Hex-digit is the four bit binary value to display

CASE Chen_Kevin_Hex_Digit IS
WHEN "0000" =>
Chen_Kevin_Segment_Data <= "1111110";
WHEN "0001" =>
Chen_Kevin_Segment_Data <= "0110000";
WHEN "0010" =>
Chen_Kevin_Segment_Data <= "1101101";
WHEN "0011" =>
Chen_Kevin_Segment_Data <= "1111001";
WHEN "0100" =>
Chen_Kevin_Segment_Data <= "0110011";
WHEN "0101" =>
Chen_Kevin_Segment_Data <= "1011011";
WHEN "0110" =>
Chen_Kevin_Segment_Data <= "1011111";
WHEN "0111" =>
Chen_Kevin_Segment_Data <= "1110000";
WHEN "1000" =>
Chen_Kevin_Segment_Data <= "1111111";
WHEN "1001" => 
Chen_Kevin_Segment_Data <= "1110011";
WHEN "1010" =>
Chen_Kevin_Segment_Data <= "1110111";
WHEN "1011" => 
Chen_Kevin_Segment_Data <= "0011111";
WHEN "1100" =>
Chen_Kevin_Segment_Data <= "1001110";
WHEN "1101" =>
Chen_Kevin_Segment_Data <= "0111101";
WHEN "1110" => 
Chen_Kevin_Segment_Data <= "1001111";
WHEN "1111" => 
Chen_Kevin_Segment_Data <= "1000111";
END CASE;
END PROCESS;
-- extract segment data bits and invert 
-- LED driver circuit is inverted
Chen_Kevin_Segment_A <= NOT Chen_Kevin_Segment_Data (6);
Chen_Kevin_Segment_B <= NOT Chen_Kevin_Segment_Data (5);
Chen_Kevin_Segment_C <= NOT Chen_Kevin_Segment_Data (4);
Chen_Kevin_Segment_D <= NOT Chen_Kevin_Segment_Data (3);
Chen_Kevin_Segment_E <= NOT Chen_Kevin_Segment_Data (2);
Chen_Kevin_Segment_F <= NOT Chen_Kevin_Segment_Data (1);
Chen_Kevin_Segment_G <= NOT Chen_Kevin_Segment_Data (0);
END Arc; 