------------------------------------------------------------------
-- Full_Adder_1bit.vhd
-- Susan Hughes, Designer
-- Date ?
-- Edits by Skye Ernst
-- Date: 4/23/2022
-- Revision 1.1
------------------------------------------------------------------

-- Library declaration
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_1bit is
      port 
      (     
            a     : in std_logic    := '0';
            b     : in std_logic    := '0';
            cin   : in std_logic    := '0';
            sum   : out std_logic   := '0';
            cout  : out std_logic   := '0';
            ov    : out std_logic   := '0'
      );
end Full_Adder_1bit;

architecture Behavioral of Full_Adder_1bit is
begin

   sum      <= a XOR b XOR cin;
   cout     <= (a AND b) OR (a AND cin) or (b AND cin);
   ov       <= a AND b AND cin;

end Behavioral;

