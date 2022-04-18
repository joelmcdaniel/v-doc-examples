/* 
a := 123 // a will have the type int

// Can also use hexadecimal, binary or octal notation for integer literals:
a := 0x7B
b := 0b01111011
c := 0o173 
*/

// V also supports writing numbers with _ as separator:
num := 1_000_000 // same as 1000000
three := 0b0_11 // same as 0b11
float_num := 3_122.55 // same as 3122.55
hexa := 0xF_F // same as 255
oct := 0o17_3 // same as 0o173

// If you want a different type of integer, you can use casting:
a := i64(123)
b := u8(42)
c := i16(12345)

//Assigning floating point numbers works the same way:
f := 1.0
f1 := f64(3.14)
f2 := f32(3.14)

/*
If you do not specify the type explicitly, by default float literals will have 
the type of f64.

Float literals can also be declared as a power of ten:						*/
f0 := 42e1 // 420
f3 := 123e-2 // 1.23
f4 := 456e+2 // 45600

println(f0)