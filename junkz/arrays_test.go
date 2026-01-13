package main_test

import (
	"testing"
)

var msg = [5]byte{'h', 'e', 'l', 'l', 'o'}
var alt_msg [5]byte = [5]byte{'h', 'e', 'l', 'l', 'o'}

func TestBytesArray(t *testing.T) {
	t.Parallel()
	got := msg == alt_msg
	if !got {
		t.Errorf("Got: %#v\n", got)
	}
}

func TestLengthOfArray(t *testing.T) {
	t.Parallel()
	req := 5
	got := len(msg)
	if got != req {
		t.Errorf("Got: %d - Wanted: %d\n", got, req)
	}
}

func TestSliceOfArray(t *testing.T) {
	t.Parallel()
	const words = "Caldara's Blaza"
	subset_string := words[9 : len(words)-1]
	got := len(subset_string)
	wanted := len("Blaza")
	if wanted != got {
		t.Errorf("Wanted: %d - Got: %d\n", wanted, got)
	}
}
