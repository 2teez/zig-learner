package main

import "fmt"

type Person struct {
	name   string
	age    Age
	height float32
}

type Age uint

func main() {
	perl := Person{
		name:   "perl",
		age:    21,
		height: 12.34,
	}

	fmt.Printf("%#v\n", perl)
}

func MakePerson(name string, age Age, height float32) *Person {
	return &Person{name, age, height}
}

func (p *Person) Age() Age {
	return p.age
}
