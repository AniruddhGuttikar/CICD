package main

import "testing"

func TestAdd(t *testing.T) {
	expected := 3
	result := Add(1, 2)
	if result != expected {
		t.Errorf("Test Failed: Expected %d, but got %d", expected, result)
	}
}
