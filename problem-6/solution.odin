package main

/*
	The sum of the squares of the first ten natural numbers is,
		1² + 2² + ... + 10² = 385

	The square of the sum of the first ten natural numbers is,
		(1 + 2 + ... + 10)² = 55² = 3025

	Hence the difference between the sum of the squares of the first ten
	natural numbers and the squares of the sum is 3025 - 385 = 2640

	Find the difference between the sum of the squares of the first one
	hundred natural numbers and the square of the sum.
*/

import "core:fmt"

sum_of_squares :: proc(n: int) -> int {
	sum: int = 0

	for i := 0; i <= n; i += 1 {
		sum += i * i
	}

	return sum
}

square_of_sum :: proc(n: int) -> int {
	sum: int = 0

	for i := 0; i <= n; i += 1 {
		sum += i
	}

	return sum * sum
}

main :: proc() {
	n: int = 100
	total := square_of_sum(n) - sum_of_squares(n)
	fmt.printfln("The total is: %i", total)
}
