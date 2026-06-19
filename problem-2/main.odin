package main

import "core:fmt"

main :: proc() {
    CAP :: 4_000_000
    sum := 2
    a := 1
    b := 2
    c := 0

    for {
        if b >= CAP { break }

        c = b
        b = a + c
        a = c

        if b % 2 == 0 { sum += b }
    }

    fmt.printf("Answer: {0}\n", sum)
}
