package main

import "core:fmt"
import "core:strconv"

MAX_STR_LEN :: 32

is_palindrome :: proc(n: int) -> bool {
    buf := [MAX_STR_LEN]byte{}
    str := strconv.write_int(buf[:], i64(n), 10)

    if len(str) % 2 != 0 { return false }
    i := 0 
    j := len(str)-1
    for ; i < int(len(str)/2); {
        if buf[i] != buf[j] { return false }

        i += 1
        j -= 1 
    }

    return true
}

main :: proc() {
    num1 := 999
    num2 := 999
    max := -1
    mult := 0

    for i := num1; i >= 100; i -= 1 {
        for j := num2; j >= 100; j -= 1 {
            mult = i * j       
            if is_palindrome(mult) {
                if max < mult { max = mult }
            }
        }
    }

    fmt.printfln("Answer: {0}", max) 
}
