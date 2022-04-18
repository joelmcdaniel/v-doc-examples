fn main() {
	println(add(77, 33))
	println(sub(100, 50))

	a, b := foo()
	println(a)
	println(b)
	c, _ := foo() // ignore values using `_`
	println(sub(b, c))
}

fn add(x int, y int) int {
	return x + y
}

fn sub(x int, y int) int {
	return x - y
}

// Returning multiple values
fn foo() (int, int) {
	return 2, 3
}

// prepend pub make functions visible to other modules
pub fn public_function() {
}

// functions are private (not exported) by default
fn private_function() {
}