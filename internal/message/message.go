// Package message is for common message functions
package message

import (
	"fmt"
)

// GetMessage return formatted Message
func GetMessage(name string) string {
	return fmt.Sprintf("Hello, %s!", name)
}
