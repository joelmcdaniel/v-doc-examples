// String operators
name := 'Bob'
bobby := name + 'by' // + is used to concatenate strings
println(bobby) // "Bobby"
mut str := 'hello '
str += 'world' // `+=` is used to append to a string
println(str) // "hello world"

/* All operators in V must have values of the same type on both sides. 
You cannot concatenate an integer to a string:							
age := 10
println('age = ' + age) // not allowed

We have to either convert age to a string:
age := 11
println('age = ' + age.str())

or use string interpolation (preferred):							*/
age := 12
println('age = $age')