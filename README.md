# Compiler-Design-Project-ANTLR-Parsing
• The aim of this project is to implement an SDD (Syntax Directed Definition)  
• The project is implemented using ANTLR  
• The following SDD is implemented which converts an input binary number
to the equivalent decimal number  
S −→ L · R S.val = L.val + R.val  
L −→ BL1 L.n = L1.n + 1  
L.val = B.val × 2  
L.n + L1.val  
L −→ B L.n = 0  
L.val = B.val  
R −→ BR1 R.val = (R1.val × 0.5) + (B.val × 0.5)  
R −→ B R.val = B.val × 0.5  
B −→ 0 B.val = 0  
B −→ 1 B.val = 1  
• For example, here are some inputs and the corresponding correct outputs.  
• Input: 101.101  Output:  5.625  
• Input: 100.11   Output:  4.75  
• Input: 0.10     Output:  0.5  
 
 
 
