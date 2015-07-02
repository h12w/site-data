package main

import (
	"time"

	//"github.com/hailiang/site/serve"
	"github.com/stretchr/graceful"
	"h12.me/site/serve"
)

func main() {
	graceful.Run(":80", 3*time.Second, serve.Handler())
}
