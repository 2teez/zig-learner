package main

import "testing"

func TestStructPerson(t *testing.T) {
	t.Parallel()
	got := MakePersonStruct(t, "java", 34, 4.12)
	made := Person{name: "java", height: 4.12, age: 34}
	if *got != made {
		t.Errorf("got: %v, made: %v", got, made)
	}
}

func TestMakePersonFunction(t *testing.T) {
	t.Parallel()
	got := MakePerson("java", 34, 4.12)
	made := MakePersonStruct(t, "java", 34, 4.12)
	if *got != *made {
		t.Errorf("got: %v, made: %v", got, made)
	}
}

func TestStructPersonAge(t *testing.T) {
	t.Parallel()
	got := MakePersonStruct(t, "java", 34, 4.12)
	var age Age = Age(34)
	if got.Age() != age {
		t.Errorf("got: %v, made: %v", got, 34)
	}
}

func MakePersonStruct(t *testing.T, name string, age Age, height float32) *Person {
	t.Helper()

	return &Person{
		name, age, height,
	}
}
