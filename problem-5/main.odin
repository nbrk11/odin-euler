package main

import "core:fmt"
import "core:math"
import "core:time"

// This solution uses the LCM (Least Common Multiple) mathematical method
// For calculation of LCM the prime factorization approach is used
// Average time of execution ~8-9 microseconds

main :: proc() {
    primes :: [8]int{2,3,5,7,11,13,17,19}
    powers := [8]int{}
    cap :: 20

    sw := time.Stopwatch{}
    time.stopwatch_start(&sw)

    for p, i in primes {
        max := -1
        for j := 1; ; j += 1 {
            pow := math.pow(f16(p), f16(j)) 
            if pow > 20 {
                powers[i] = max
                break 
            } 

            max = max < int(pow) ? int(pow) : max
        }
    }

    result := 1
    for p in powers {
        result *= p
    }

    time.stopwatch_stop(&sw)
    duration := time.stopwatch_duration(sw)

    fmt.printfln("Answer: {0}", result)
    fmt.printfln("Time of execution: {0}", time.duration_microseconds(duration))
}
