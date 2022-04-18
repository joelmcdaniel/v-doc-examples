name := 'Bob'
assert name.len == 3       // will print 3
assert name[0] == u8(66) // indexing gives a byte, u8(66) == `B`
assert name[1..3] == 'ob'  // slicing gives a string 'ob'

// escape codes
windows_newline := '\r\n'      // escape special characters like in C
assert windows_newline.len == 2

// arbitrary bytes can be directly specified using `\x##` notation where `#` is
// a hex digit aardvark_str := '\x61ardvark' assert aardvark_str == 'aardvark'
assert '\xc0'[0] == u8(0xc0)

// or using octal escape `\###` notation where `#` is an octal digit
aardvark_str2 := '\141ardvark'
assert aardvark_str2 == 'aardvark'

// Unicode can be specified directly as `\u####` where # is a hex digit
// and will be converted internally to its UTF-8 representation
star_str := '\u2605' // ★
assert star_str == '★'
assert star_str == '\xe2\x98\x85' // UTF-8 can be specified this way too.

// In V, a string is a read-only array of bytes. All Unicode characters are 
// encoded using UTF-8:
s := 'hello 🌎' // emoji takes 4 bytes
assert s.len == 10

arr := s.bytes() // convert `string` to `[]u8`
assert arr.len == 10

s2 := arr.bytestr() // convert `[]byte` to `string`
assert s2 == s

// String values are immutable. You cannot mutate elements:
// mut s3 := 'hello 🌎'
// s3[0] = `H` // not allowed
// error: cannot assign to s[i] since V strings are immutable

/* 
Note that indexing a string will produce a byte, not a rune nor another 
string. Indexes correspond to bytes in the string, not Unicode code points. 
If you want to convert the byte to a string, use the .ascii_str() method on 
the byte: 																	*/
country := 'Netherlands'
println(country[0]) // Output: 78
println(country[0].ascii_str()) // Output: N

/*
Both single and double quotes can be used to denote strings. For consistency, 
vfmt converts double quotes to single quotes unless the string contains a 
single quote character.

For raw strings, prepend r. Escape handling is not done for raw strings:	*/
s4 := r'hello\nworld' // the `\n` will be preserved as two characters
println(s4) // "hello\nworld"

// Strings can be easily converted to integers:
forty_two := '42'
n := forty_two.int() // 42
println(n)

// all int literals are supported
assert '0xc3'.int() == 195
assert '0o10'.int() == 8
assert '0b1111_0000_1010'.int() == 3850
assert '-0b1111_0000_1010'.int() == -3850