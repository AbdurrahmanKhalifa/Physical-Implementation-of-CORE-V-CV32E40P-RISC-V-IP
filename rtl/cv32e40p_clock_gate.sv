module cv32e40p_clock_gate (
    input  logic clk_i,
    input  logic en_i,
    input  logic scan_cg_en_i,
    output logic clk_o
);

/*

  logic clk_en;

  always_latch begin
    if (clk_i == 1'b0) clk_en <= en_i | scan_cg_en_i;
  end

  assign clk_o = clk_i & clk_en;

*/


  SAEDHVT14_CKGTPL_V5_1 core_clock_gate (
      .CK      (clk_i),
      .EN      (en_i | scan_cg_en_i),
      .Q       (clk_o)
  );


endmodule  // cv32e40p_clock_gate
