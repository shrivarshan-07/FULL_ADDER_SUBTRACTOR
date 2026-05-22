module EXP3(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
xor g1(sum,a,b,c);
assign carry=((a&b)|(b&c)|(c&a));
endmodule