module verilog2(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
xor g1(diff,a,b,c);
assign borrow=((~a&c)|(~a&b)|(b&c));
endmodule