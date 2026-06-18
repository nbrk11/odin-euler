package main

import "core:fmt"

main :: proc() {
    CAPACITY :: 1000
    sum := 0

    for i := 0; i < CAPACITY; i += 1 {
        if i % 3 == 0 {
            sum += i
            continue
        }

        if i % 5 == 0 {
            sum += i
            continue
        }
    }

    fmt.printf("Answer: {0}\n", sum)
}
