library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RegAdderTest_TB is
    generic (n : positve := 8);
end entity RegAdderTest_TB;

architecture tb of RegAdderTest_TB is

    component GenRegV2 is
        generic (n : positive);
        port 
        (
            i_clk           : in std_logic;
            i_rst           : in std_logic; 
            i_enable_in     : in std_logic;
            i_enable_out    : in std_logic;
            b_data          : inout std_logic_vector (n-1 downto 0)
        );
    end component GenRegV2;

    component nbit_full_adder is
        generic (n : positive);
        port
        (
            i_a, i_b    : in std_logic_vector (n-1 downto 0);
            i_cin       : in std_logic;

            o_sum       : out std_logic_vector (n-1 downto 0);
            o_cout      : out std_logic;
            o_OV        : out std_logic
        );
    end component nbit_full_adder;

    --Adder signals
    signal tb_a                 : std_logic_vector (n-1 downto 0) := (others => '0');
    signal tb_b                 : std_logic_vector (n-1 downto 0) := (others => '0');
    signal tb_sum               : std_logic_vector (n-1 downto 0) := (others => '0');
    signal tb_cin               : std_logic := '0';
    signal tb_cout              : std_logic := '0';
    signal tb_ov                : std_logic := '0';

    --Register signals
    signal tb_clk               : std_logic := '0';
    signal tb_rst               : std_logic := '1';

    signal tb_enable_in_a       : std_logic := '1';
    signal tb_enable_out_a      : std_logic := '1';
    signal tb_data_a            : std_logic_vector(n-1 downto 0) := (others => 'Z');

    signal tb_enable_in_b       : std_logic := '1';
    signal tb_enable_out_b      : std_logic := '1';
    signal tb_data_b            : std_logic_vector(n-1 downto 0) := (others => 'Z');

    signal tb_enable_in_acc     : std_logic := '1';
    signal tb_enable_out_acc    : std_logic := '1';
    signal tb_data_acc          : std_logic_vector(n-1 downto 0) := (others => 'Z');

begin

    RA:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => tb_clk,
        i_rst => tb_rst,
        i_enable_in => tb_enable_in_a,
        i_enable_out => tb_enable_out_b,
        b_data => tb_data_a
    );

    RB:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => tb_clk,
        i_rst => tb_rst,
        i_enable_in => tb_enable_in_b,
        i_enable_out => tb_enable_out_b,
        b_data => tb_data_b
    );

    RACC:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => tb_clk,
        i_rst => tb_rst,
        i_enable_in => tb_enable_in_acc,
        i_enable_out => tb_enable_out_acc,
        b_data => tb_data_acc
    );

    ADDER:nbit_full_adder 
    generic map 
    (
        n => n
    )
    port map
    (
        i_a => tb_a,
        i_b => tb_b,
        i_cin => tb_cin,
        o_sum => tb_sum,
        o_cout => tb_cout,
        o_OV => tb_ov
    );

end tb ; -- tb