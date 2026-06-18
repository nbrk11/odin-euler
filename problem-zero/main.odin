package main

import "core:fmt"

main :: proc() {
    NUMBER_COUNT :: 583_000
    sum := 0
    square := 0

    for i := 1; i <= NUMBER_COUNT; i += 1 {
        square = i*i
        if square % 2 != 0 { sum += square }
    }

    fmt.printf("Answer: {0}\n", sum)
}
