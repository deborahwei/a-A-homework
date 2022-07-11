'use strict';

function madLib(verb, adj, noun) {
    console.log(`We shall ${verb} the ${adj} ${noun}`)
};

// madLib("kill", "dearest", "mother")

function isSubstring(searchString, subString) {
    console.log(searchString.includes(subString))
};

// isSubstring("time to program", "time")
// isSubstring("Jump for joy", "joys")

function fizzBuzz(array) {
    let newArr = [];
    for (let i = 0; i < array.length; i++) {
        if (array[i] % 5 === 0 && array[i] % 3 === 0){
            continue
        } else (array[i] % 5 === 0 || array[i] % 3 === 0); {
            newArr.push(array[i])
        }
        }
    return newArr
    }

// console.log(fizzBuzz([1, 2, 3, 4, 5, 15]))

function isPrime(num) {
    if (num < 2) {
        return false;
    }
    if (num === 2) {
        return true;
    }
    for (let i = 2; i < num; i++) {
        if (num % i == 0) {
            return false;
        }
    }
    return true
}

// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(13))

function firstNPrimes(times) {
    let newArr = []
    let i = 2
    while (newArr.length < times){
        if (isPrime(i)) {
            newArr.push(i);
        }
        i++
    }
    return newArr
}

// console.log(firstNPrimes(5))

function sumOfNPrimes(n) {
    let total = 0 
    let sumArr = firstNPrimes(n);
    for (let i = 0; i < n; i++) {
        total += sumArr[i];
    }
    return total
}

console.log(sumOfNPrimes(4))