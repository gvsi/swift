// Playground - noun: a place where people can play

import Cocoa


// Calculates the first 100 prime numbers
var primeNumbers = Int[]()

func isPrime(number: Int) -> Bool {
    var isPrime = true
    for i in 2..Int(floor(sqrt(Double(number))))+1 {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    if isPrime == true {
        return true
    } else {
        return false
    }
}

var i = 1;
while primeNumbers.count < 100 {
    if isPrime(i) {
        primeNumbers.append(i);
    }
    ++i
}

primeNumbers
