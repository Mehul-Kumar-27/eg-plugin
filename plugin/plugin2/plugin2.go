package main

import (
	"github.com/Mehul-Kumar-27/eg-plugin/types"
)

var Input types.InData
var Output types.OutData
var Name string

func init() {
	Name = "Plugin2"
}
func process() types.OutData {
	o := types.OutData{V: Input.V * 20}
	return o
}
func PluginFunction() {
	Output = process()
}
