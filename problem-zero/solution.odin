package main

/*
	A number is a perfect square, or a square number, if it is the square of a positive integer.
	For example, 25 is a square number because 5^2 = 5 * 5 = 25; it is also an odd square.

	The first 5 square numbers are: 1, 4, 9, 16, 25, and the sum of the odd squares is:
	1 + 9 + 25 = 35.

	Among the first 243 thousand square numbers, what is the sum of all the odd squares?
*/

import "core:fmt"

get_square :: proc(n: int) -> int {
	return n * n
}

is_odd :: proc(n: int) -> bool {
	if n % 2 == 0 {
		return false
	} else {
		return true
	}
}

main :: proc() {
	max_numbers: int = 243000
	sum: int = 0

	for i := 0; i < max_numbers; i += 1 {
		if (is_odd(get_square(i))) {
			sum += get_square(i)
		}
	}

	fmt.printfln("Sum of the odd squares is: %i", sum)
}
