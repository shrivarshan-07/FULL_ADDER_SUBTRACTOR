# FULL_ADDER_SUBTRACTOR

Implementation-of-Full-Adder-and-Full-subtractor-circuit

**AIM:**

To design a Full Adder and Full Subtractor circuit and verify its truth table in Quartus using Verilog programming.

**Equipments Required:**

Hardware – PCs, Cyclone II , USB flasher

Software – Quartus prime

**Full Adder and Full Subtractor**

**Full Adder**

Full adder is a digital circuit used to calculate the sum of three binary bits. It consists of three inputs and two outputs. Two of the input variables, denoted by A and B, represent the two significant bits to be added. The third input, Cin, represents the carry from the previous lower significant position. Two outputs are necessary because the arithmetic sum of three binary digits ranges in value from 0 to 3, and binary 2 or 3 needs two digits. The two outputs are sum and carry.

Sum =A’B’Cin + A’BCin’ + ABCin + AB’Cin’ = A ⊕ B ⊕ Cin 

Carry = AB + ACin + BCin

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/0f30ba51-5ffb-4198-845f-18e054f675e7)

**Figure -1 FULL ADDER**

**Full Subtractor**

A full subtractor is a combinational circuit that performs subtraction involving three bits, namely minuend, subtrahend, and borrow-in . It accepts three inputs: minuend, subtrahend and a borrow bit and it produces two outputs: difference and borrow.

![image](https://github.com/naavaneetha/FULL_ADDER_SUBTRACTOR/assets/154305477/02b24f51-ab51-4304-9ad6-7b81ffc1ead5)

Diff = A ⊕ B ⊕ Bin 

Borrow out = A'Bin + A'B + BBin

**Truthtable**

**Procedure**

Write the detailed procedure here

**Program:**

/* Program to design a half subtractor and full subtractor circuit and verify its truth table in quartus using Verilog programming.
Developed by: Shrivarshan
RegisterNumber: 212225240146 */
```
module EXP3(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
xor g1(sum,a,b,c);
assign carry=((a&b)|(b&c)|(c&a));
endmodule

---------------------------------

module EXP3(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
xor g1(diff,a,b,c);
assign borrow=((~a&c)|(~a&b)|(b&c));
endmodule

```
**RTL Schematic**

<img width="791" height="413" alt="Screenshot 2026-05-21 184913" src="https://github.com/user-attachments/assets/8ada990c-9bd3-44ed-9d7a-01debc0e8be7" />

<img width="517" height="357" alt="image" src="https://github.com/user-attachments/assets/8f74d1f4-6f21-4508-9577-2769d10e7780" />


**Output Timing Waveform**
<img width="1918" height="358" alt="Screenshot 2026-05-21 185128" src="https://github.com/user-attachments/assets/89caae96-5f0e-4d27-8d9d-49229ff4ae34" />
<img width="1917" height="297" alt="Screenshot 2026-05-21 185606" src="https://github.com/user-attachments/assets/82f775fe-6ee3-4cdb-9a63-6f92ff50c68c" />




**Result:**

Thus the Full Adder and Full Subtractor circuits are designed and the truth tables is verified using Quartus software.



