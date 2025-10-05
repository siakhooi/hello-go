package message

import (
	"testing"
)

func TestGetMessage(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected string
	}{
		{"normal name", "Alice", "Hello, Alice!"},
		{"empty name", "", "Hello, !"},
		{"special chars", "Bob!", "Hello, Bob!!"},
		{"spaces", "John Doe", "Hello, John Doe!"},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := GetMessage(tt.input)
			if result != tt.expected {
				t.Errorf("GetMessage(%q) = %q; want %q", tt.input, result, tt.expected)
			}
		})
	}
}
