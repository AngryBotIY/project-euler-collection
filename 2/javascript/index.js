const range = (x) => new Array(x).fill().map((_, i) => i++)

function* fib() {
  const previous = []

  const getCurrent = () => {
    if (previous.length === 0) {
      const value = 0
      previous.push(value)
      return value
    } else if (previous.length === 1) {
      const value = 1
      previous.push(value)
      return value
    } else {
      const value = previous[previous.length - 2] + previous[previous.length - 1]
      previous.push(value)
      return value
    }
  }

  while (true) yield getCurrent()
}

const sequence = fib()

const INPUT = range(50)
  .map(() => sequence.next().value)
  .filter((n) => n < 4000000)

const main = (data) => data.reduce((acc, value) => (value % 2 === 0 ? acc + value : acc), 0)

const OUTPUT = main(INPUT) // => 4613732
