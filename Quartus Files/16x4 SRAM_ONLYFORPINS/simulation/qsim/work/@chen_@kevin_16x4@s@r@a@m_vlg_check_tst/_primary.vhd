library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_16x4SRAM_vlg_check_tst is
    port(
        Chen_Kevin_out  : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Chen_Kevin_16x4SRAM_vlg_check_tst;
