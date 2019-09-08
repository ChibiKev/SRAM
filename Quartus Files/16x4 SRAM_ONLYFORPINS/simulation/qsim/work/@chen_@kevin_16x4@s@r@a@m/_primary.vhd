library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_16x4SRAM is
    port(
        Chen_Kevin_out  : out    vl_logic_vector(3 downto 0);
        Chen_Kevin_datain: in     vl_logic_vector(3 downto 0);
        Chen_Kevin_WE   : in     vl_logic;
        Chen_Kevin_CS   : in     vl_logic;
        Chen_Kevin_address: in     vl_logic_vector(3 downto 0);
        Chen_Kevin_OE   : in     vl_logic
    );
end Chen_Kevin_16x4SRAM;
