package main

/*
	If we list all the natural numbers below 10 that are multiples of 3 or 5,
	we get 3, 5, 6 and 9. The sum of these multiples is 23.

	Find the sum of all the multiples of 3 or 5 below 1000.
*/

import "core:fmt"

multiple :: proc(num: int) -> bool {
	if (num % 3 == 0) || (num % 5 == 0) {
		return true
	}
	return false
}

main :: proc() {
	max_num: int = 1000
	sum: int = 0

	for i := 0; i < max_num; i += 1 {
		if (multiple(i)) {
			sum += i
		}
	}

	fmt.printfln("The sum is: %i", sum)
}
