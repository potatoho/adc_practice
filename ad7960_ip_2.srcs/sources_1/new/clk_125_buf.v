module clk125_buf (
    input  wire clk_125_p,   // 125 MHz differential clock (P)
    input  wire clk_125_n,   // 125 MHz differential clock (N)
    output wire clk_125      // single-ended 125 MHz clock
);

    IBUFDS #(
        .DIFF_TERM("TRUE"),     // 내부 차동 종단 사용 (필요 시 TRUE)
        .IBUF_LOW_PWR("FALSE")  // 신호 무결성을 위해 Low Power 모드 비활성화
    ) IBUFDS_inst (
        .O(clk_125),   // 단일 클럭 출력
        .I(clk_125_p), // 차동 입력 P
        .IB(clk_125_n) // 차동 입력 N
    );

endmodule
