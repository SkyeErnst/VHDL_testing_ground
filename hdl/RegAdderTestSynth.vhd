library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RegAdderTestSynth is
    generic (n : positive := 8);
    port
    (
        --Clock and reset
        i_clk                   : in std_logic := '0';
        i_rst                   : in std_logic := '1';

        --Enables
        i_enable_in_a           : in std_logic := '1';
        i_enable_out_a          : in std_logic := '1';

        i_enable_in_b           : in std_logic := '1';
        i_enable_out_b          : in std_logic := '1';

        i_enable_in_acc         : in std_logic := '1';
        i_enable_out_acc        : in std_logic := '1';

        --Carry in
        i_cin                   : in std_logic := '0';

        --Data bus
        b_data                  : inout std_logic_vector (n-1 downto 0) := (others => 'Z');

        o_direct_out            : out std_logic_vecotr (n-1 downto 0) := (others => '0');

        o_sum                   : out std_logic_vector (n-1 downto 0) := (others => '0');
        o_cout                  : out std_logic := '0';
        o_ov                    : out std_logic := '0'
    );
end entity RegAdderTestSynth;

architecture rtl of RegAdderTestSynth is

    component GenRegV2 is
        generic (n : positive);
        port 
        (
            i_clk           : in std_logic;
            i_rst           : in std_logic; 
            i_enable_in     : in std_logic;
            i_enable_out    : in std_logic;
            b_data          : inout std_logic_vector (n-1 downto 0);
            o_direct_out    : out std_logic_vecotr (n-1 downto 0);
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
    signal s_a_direct                 : std_logic_vector (n-1 downto 0) := (others => '0');
    signal s_b_direct                 : std_logic_vector (n-1 downto 0) := (others => '0');
    signal s_sum                      : std_logic_vector (n-1 downto 0) := (others => '0');
    --signal tb_cin               : std_logic := '0';
    --signal tb_cout              : std_logic := '0';
    --signal tb_ov                : std_logic := '0';

    --Register signals
    --signal tb_clk               : std_logic := '0';
    --signal tb_rst               : std_logic := '1';

    --signal tb_enable_in_a       : std_logic := '1';
    --signal tb_enable_out_a      : std_logic := '1';
    --signal tb_data_a            : std_logic_vector(n-1 downto 0) := (others => 'Z');

    --signal tb_enable_in_b       : std_logic := '1';
    --signal tb_enable_out_b      : std_logic := '1';
    --signal tb_data_b            : std_logic_vector(n-1 downto 0) := (others => 'Z');

    --signal tb_enable_in_acc     : std_logic := '1';
    --signal tb_enable_out_acc    : std_logic := '1';
    --signal tb_data_acc          : std_logic_vector(n-1 downto 0) := (others => 'Z');

begin

    RA:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => i_clk,
        i_rst => i_rst,
        i_enable_in => i_enable_in_a,
        i_enable_out => i_enable_out_a,
        b_data => b_data,
        o_direct_out => s_a_direct
    );

    RB:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => i_clk,
        i_rst => i_rst,
        i_enable_in => i_enable_in_b,
        i_enable_out => i_enable_out_b,
        b_data => b_data,
        o_direct_out => s_b_direct
    );

    RACC:GenRegV2 
    generic map
    (
        n => n
    )
    port map
    (
        i_clk => i_clk,
        i_rst => i_rst,
        i_enable_in => i_enable_in_acc,
        i_enable_out => i_enable_out_acc,
        b_data => s_sum
    );

    ADDER:nbit_full_adder 
    generic map 
    (
        n => n
    )
    port map
    (
        i_a => s_a,
        i_b => s_b,
        i_cin => i_cin,
        o_sum => s_sum,
        o_cout => o_cout,
        o_OV => o_ov
    );

end rtl;