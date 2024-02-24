package main

import (
	"github.com/Mehul-Kumar-27/eg-plugin/types"
)

var Input types.InData

var Output types.OutData

var Name string

func init() {
	Name = "Plugin1"
}

func process() types.OutData {
	return types.OutData{V: Input.V * 2}
}

func PluginFunction() {
	Output = process()
}
