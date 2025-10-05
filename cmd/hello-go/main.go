package main

import (
	"fmt"
	"os"

	"github.com/siakhooi/hello-go/internal/message"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Usage: hello-go <name>")
		return
	}
	name := os.Args[1]
	fmt.Println(message.GetMessage(name))
}
