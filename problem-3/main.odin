#+feature dynamic-literals
package main

import "core:fmt"
import "core:math"

trial_division :: proc(n: u64) -> u32 {
    sqrt := math.sqrt(f64(n))
    remainder := n
    primes := [dynamic]u32{2}
    factors := [dynamic]u32{}
    defer delete(primes)
    defer delete(factors)

    for i : u32 = 3; i < u32(sqrt); i += 1 {
        for prime, j in primes {
            if i % prime == 0 { break }

            if j == len(primes)-1 { 
                append(&primes, i) 
                break
            } 
        }
    }

    for prime in primes {
        if remainder % u64(prime) == 0 {
            remainder /= u64(prime)
            append(&factors, prime)
        }
    }

    result : u32 = pop(&factors)

    return result
}

main :: proc() {
    TARGET : u64 : 600851475143

    max_prime_factor := trial_division(TARGET)

    fmt.printf("Answer: {0}\n", max_prime_factor)
}
