module tb;
int a,b;

initial begin
	a=5;
	b=++a;//pre increment(Increment first, then use the value)
	$display("a=%0d  b=%0d",a,b);
	/*
	//Step by step
		- a becomes 6
		- b gets updated value → 6
	*/

	a=5;
	b=a++;//post increment(Use the value first, then increment)
	$display("a=%0d  b=%0d",a,b);

	/*
		Step by step

			- b gets current value of a → 5
			- Then a becomes 6
	*/
end
endmodule

/*
output:-
# a=6  b=6
# a=6  b=5
*/

/*
int a = 3;
int z;

z = a++ + 5;  // z = 3 + 5 = 8, then a=4
z = ++a + 5;  // a=5 first, z = 5 + 5 = 10*/
