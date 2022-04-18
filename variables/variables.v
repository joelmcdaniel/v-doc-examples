import ui
import gg

fn main() {
	name := 'Bob'
	age := 20
	large_number := i64(9999999999)
	println(name)
	println(age)
	println(large_number)

/*	Variables are declared and initialized with :=. This is the only way 
	to declare variables in V. This means that variables always have an 
	initial value.

	The variable's type is inferred from the value on the right hand side. 
	To choose a different type, use type conversion: the expression T(v) 
	converts the value v to the type T.

	Unlike most other languages, V only allows defining variables in functions. 
	Global (module level) variables are not allowed. There's no global state 
	in V (see Pure functions by default for details).

	For consistency across different code bases, all variable and function names 
	must use the snake_case style, as opposed to type names, which must use 
	PascalCase.
*/

	mutable_vars()

	init_vs_assignment()

	declaration_errors()
}

fn mutable_vars() {
	// Mutable variables
	mut age := 20
	println(age)
	age = 21
	println(age)
/*
	To change the value of the variable use =. In V, variables are immutable 
	by default. To be able to change the value of the variable, you have to 
	declare it with mut.
*/
}

fn init_vs_assignment() {
	/* age = 21 <- will not compile, not declared */
	age := 21

/*	(important) difference between := and =. := is used for declaring and 
	initializing, = is used for assigning.
*/

	// swap vars
	mut a := 0
	mut b := 1
	println('$a, $b') // 0, 1
	a, b = b, a
	println('$a, $b') // 1, 0
	  
}

fn declaration_errors() {
	a := 10
	if true {
		a := 20 // error: redefinition of `a`
	}
	// warning: unused variable `a`

/*	Unlike most languages, variable shadowing is not allowed. Declaring a 
	variable with a name that is already used in a parent scope will cause a 
	compilation error.	*/
}