library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nbit_full_adder is

    generic (n : positive := 16);

    port 
    (
        i_a, i_b : in std_logic_vecor ()
    );
end nbit_full_adder;