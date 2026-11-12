library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        estado    : out unsigned(1 downto 0);
        pc_out    : out unsigned(15 downto 0);
        instrucao : out unsigned(15 downto 0);
        ula_out   : out unsigned(15 downto 0);
        r0_out    : out unsigned(15 downto 0);
        r1_out    : out unsigned(15 downto 0);
        r2_out    : out unsigned(15 downto 0);
        r3_out    : out unsigned(15 downto 0);
        r4_out    : out unsigned(15 downto 0);
        r5_out    : out unsigned(15 downto 0)
    );
end entity;

architecture a_processador of processador is
    
    component unidade_controle is
        port(
            clk        : in  std_logic;
            rst        : in  std_logic;
            rom_data   : in  unsigned(15 downto 0);
            flag_z     : in  std_logic;
            flag_n     : in  std_logic;
            flag_c     : in  std_logic;
            flag_v     : in  std_logic;
            rom_en     : out std_logic;
            wr_en      : out std_logic;
            ula_op     : out unsigned(1 downto 0);
            sel_ula_b  : out std_logic;
            sel_write  : out std_logic;
            pc_en      : out std_logic;
            mux_pc     : out unsigned(1 downto 0);
            estado_out : out unsigned(1 downto 0)
        );
    end component;

    component pc is
        port(
            clk      : in  std_logic;
            rst      : in  std_logic;
            pc_en    : in  std_logic;
            data_in  : in  unsigned(15 downto 0);
            data_out : out unsigned(15 downto 0)
        );
    end component;

    component rom is
        port(
            clk      : in  std_logic;
            rom_en   : in  std_logic;
            endereco : in  unsigned(15 downto 0);
            dado_out : out unsigned(15 downto 0)
        );
    end component;

    component ULA is
        port( 
            x, y   : in  unsigned(15 downto 0);
            op     : in  unsigned(1 downto 0);
            saida  : out unsigned(15 downto 0);
            flag_z : out std_logic; 
            flag_n : out std_logic; 
            flag_c : out std_logic; 
            flag_v : out std_logic  
        );
    end component;

    component banco_registradores is
        port (
            clk     : in  std_logic;
            rst     : in  std_logic;
            wr_en   : in  std_logic;
            reg_wr  : in  unsigned(2 downto 0);
            data_wr : in  unsigned(15 downto 0);
            reg_r1  : in  unsigned(2 downto 0);
            reg_r2  : in  unsigned(2 downto 0);
            data_r1 : out unsigned(15 downto 0);
            data_r2 : out unsigned(15 downto 0);
            r0_dbg  : out unsigned(15 downto 0);
            r1_dbg  : out unsigned(15 downto 0);
            r2_dbg  : out unsigned(15 downto 0);
            r3_dbg  : out unsigned(15 downto 0);
            r4_dbg  : out unsigned(15 downto 0);
            r5_dbg  : out unsigned(15 downto 0)
        );
    end component;

    component mux_2x1 is
        port(
            a        : in  unsigned(15 downto 0);
            b        : in  unsigned(15 downto 0);
            sel      : in  std_logic;
            data_out : out unsigned(15 downto 0)
        );
    end component;

    component extensor_sinal is
        port(
            const_in  : in  unsigned(7 downto 0);
            const_out : out unsigned(15 downto 0)
        );
    end component;

    -- Sinais PC e ROM
    signal s_pc_atual   : unsigned(15 downto 0);
    signal s_pc_prox    : unsigned(15 downto 0);
    signal s_pc_mais_1  : unsigned(15 downto 0);
    signal s_pc_offset  : unsigned(15 downto 0);
    signal s_pc_abs     : unsigned(15 downto 0);
    signal s_rom_data   : unsigned(15 downto 0);
    signal s_rom_en     : std_logic;

    -- Sinais UC
    signal s_wr_en      : std_logic;
    signal s_ula_op     : unsigned(1 downto 0);
    signal s_sel_ula_b  : std_logic;
    signal s_sel_write  : std_logic;
    signal s_pc_en      : std_logic;
    signal s_mux_pc     : unsigned(1 downto 0);

    -- Sinais Datapath
    signal s_reg_r1     : unsigned(2 downto 0);
    signal s_data_r1    : unsigned(15 downto 0);
    signal s_data_r2    : unsigned(15 downto 0);
    signal s_const_ext  : unsigned(15 downto 0);
    signal s_ula_b_in   : unsigned(15 downto 0);
    signal s_ula_res    : unsigned(15 downto 0);
    signal s_write_back : unsigned(15 downto 0);

    -- Flags
    signal s_flag_z, s_flag_n, s_flag_c, s_flag_v : std_logic;

begin

    -- Endereco absoluto de 8 bits concatenado com zeros para o JMP
    s_pc_abs    <= x"00" & s_rom_data(7 downto 0);
    s_pc_mais_1 <= s_pc_atual + 1;
    s_pc_offset <= s_pc_mais_1 + s_const_ext;

    -- "01" seleciona salto absoluto (JMP) | "10" seleciona offset | "00" seleciona PC+1
    s_pc_prox <= s_pc_abs    when s_mux_pc = "01" else
                 s_pc_offset when s_mux_pc = "10" else
                 s_pc_mais_1;

    -- No MOV ("0101"), reg_r1 le o mesmo registrador fonte (8 downto 6) para fazer Rs OR Rs = Rs.
    -- No ADD, SUB e ADDI (2 operandos), reg_r1 le o registrador destino (11 downto 9).
    s_reg_r1 <= s_rom_data(8 downto 6) when s_rom_data(15 downto 12) = "0101" else
                s_rom_data(11 downto 9);

    u_pc: pc port map(
        clk      => clk,
        rst      => rst,
        pc_en    => s_pc_en,
        data_in  => s_pc_prox,
        data_out => s_pc_atual
    );

    u_rom: rom port map(
        clk      => clk,
        rom_en   => s_rom_en,
        endereco => s_pc_atual,
        dado_out => s_rom_data
    );

    u_uc: unidade_controle port map(
        clk        => clk,
        rst        => rst,
        rom_data   => s_rom_data,
        flag_z     => s_flag_z,
        flag_n     => s_flag_n,
        flag_c     => s_flag_c,
        flag_v     => s_flag_v,
        rom_en     => s_rom_en,
        wr_en      => s_wr_en,
        ula_op     => s_ula_op,
        sel_ula_b  => s_sel_ula_b,
        sel_write  => s_sel_write,
        pc_en      => s_pc_en,
        mux_pc     => s_mux_pc,
        estado_out => estado
    );

    u_extensor: extensor_sinal port map(
        const_in  => s_rom_data(7 downto 0),
        const_out => s_const_ext
    );

    u_mux_write: mux_2x1 port map(
        a        => s_ula_res,
        b        => s_const_ext,
        sel      => s_sel_write,
        data_out => s_write_back
    );

    u_mux_ula_b: mux_2x1 port map(
        a        => s_data_r2,
        b        => s_const_ext,
        sel      => s_sel_ula_b,
        data_out => s_ula_b_in
    );

    u_ula: ULA port map(
        x      => s_data_r1,
        y      => s_ula_b_in,
        op     => s_ula_op,
        saida  => s_ula_res,
        flag_z => s_flag_z, 
        flag_n => s_flag_n, 
        flag_c => s_flag_c,
        flag_v => s_flag_v
    );

    u_banco_reg: banco_registradores port map(
        clk     => clk,
        rst     => rst,
        wr_en   => s_wr_en,
        reg_wr  => s_rom_data(11 downto 9),
        data_wr => s_write_back,
        reg_r1  => s_reg_r1,
        reg_r2  => s_rom_data(8 downto 6),
        data_r1 => s_data_r1,
        data_r2 => s_data_r2,
        r0_dbg  => r0_out,
        r1_dbg  => r1_out,
        r2_dbg  => r2_out,
        r3_dbg  => r3_out,
        r4_dbg  => r4_out,
        r5_dbg  => r5_out
    );

    -- Sinais de inspecao para o testbench
    pc_out    <= s_pc_atual;
    instrucao <= s_rom_data;
    ula_out   <= s_ula_res;

end architecture;