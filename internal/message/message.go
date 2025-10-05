package message

import (
	"fmt"
)


func GetMessage(name string) string {
	return fmt.Sprintf("Hello, %s!", name)
}
