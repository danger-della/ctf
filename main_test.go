package main

import (
	"testing"

	"github.com/google/go-cmp/cmp"
)

func TestGetMessage(t *testing.T) {
	want := "Happy Hacking!"
	got := getMessage()
	if diff := cmp.Diff(want, got); diff != "" {
		t.Errorf("getMessage() mismatch (-want +got):\n%s", diff)
	}
}
