/**
 * Description
 * If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 * 
 * Find
 * Sum of all the multiples of 3 or 5 below 1000.
 * 
 * Link
 * https://projecteuler.net/problem=1
 */

const INPUT = (count) => new Array(count).fill().map((x, i) => i++)

const main = (data) => data.reduce((acc, value) => (value % 3 === 0 || value % 5 === 0) ? acc + value : acc, 0)

const OUTPUT = main(INPUT(1000))

console.log('OUTPUT', OUTPUT)