
grammar convert;
// start the code with the function operation and print its return value
start: operation EOF {System.out.println("The number in decimal is "+$operation.val);} ;
// this function returns the value of the binary number before & after the decimal point in decimal 
operation returns [float val]
    : before_decimal after_decimal WS?EOF {$val = $before_decimal.val + $after_decimal.val;};	
// if the number before the decimal is a single digit then it is zero or one
// else you multiply 2 by the binary digit (0 or 1) and add it to the total result
before_decimal returns [float val, int len]
    : single_number {$val = $single_number.val;$len=1;} 
	| before_decimal1 = before_decimal single_number{$val = 2*$before_decimal1.val +$single_number.val;$len=$before_decimal1.len + 1;} ;
// to convert numbers after decimal point we divide each digit from right side of point till the end by 2^1, 2^2, 2^3, … respectively and add all to result 
after_decimal returns [float val]
    : '.'before_decimal{$val = $before_decimal.val / (float)Math.pow(2,$before_decimal.len);} | {$val=0;}  ;
// single digits are either zero or one
single_number returns [int val]
    : '1'{$val = 1;} | '0'{$val = 0;};	
WS : [ \r\n\t] + -> skip;
