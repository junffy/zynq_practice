`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2018 05:54:37 PM
// Design Name: 
// Module Name: blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blink(
  input CLK,
  output [3:0] OUTPUT
);
parameter T = 27'd124999999; // 125MHz clk for 1sec
reg [26:0] cnt = 27'd0;
reg dec = 1'd0;

always @(posedge CLK) begin
  if(cnt == T) begin
    cnt <= 27'd0;
    dec <= ~dec;
  end
  else begin
    cnt <= cnt + 27'd1;
  end
end

assign OUTPUT = {dec, dec, dec, dec};

endmodule

