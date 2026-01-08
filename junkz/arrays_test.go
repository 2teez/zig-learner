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
