const INPUT = (count) => new Array(count).fill().map((x, i) => i++)

const main = (data) => data.reduce((acc, value) => (value % 3 === 0 || value % 5 === 0) ? acc + value : acc, 0)

const OUTPUT = main(INPUT(1000))

console.log('OUTPUT', OUTPUT)