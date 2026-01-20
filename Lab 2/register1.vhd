LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register1 IS
PORT(
		d	 : IN STD_LOGIC; --input
		ld  : IN STD_LOGIC; -- load / enable
		clr : IN STD_LOGIC; -- async. clear
		clk : IN STD_LOGIC; -- clock
		Q	 : OUT STD_LOGIC	 -- output
		);
END register1;

ARCHITECTURE Behaviour OF register1 IS
BEGIN
	PROCESS (ld, clr, clk)
	BEGIN
	-- we want asynchronous clear
	IF (clr = '1') THEN
		Q <= '0';
	ELSIF ((clk'EVENT AND clk ='1') and (ld = '1')) THEN
		Q <= d;
	END IF;
	END PROCESS;
END Behaviour;