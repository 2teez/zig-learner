package main

import (
	"log"
	"reflect"
)

var msg = [5]byte{'h', 'e', 'l', 'l', 'o'}
var alt_msg [5]byte = [5]byte{'h', 'e', 'l', 'l', 'o'}

func main() {
	log.Println(reflect.DeepEqual(msg, alt_msg))
	log.Println(msg == alt_msg)
}
