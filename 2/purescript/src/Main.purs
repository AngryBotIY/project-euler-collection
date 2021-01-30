module Main where

import Prelude

import Data.Array ((..), filter)
import Data.Foldable (sum)
import Effect (Effect)
import Effect.Console (log)

fib :: Int -> Int
fib 0 = 1
fib 1 = 2
fib number = fib(number - 2) + fib(number - 1)

range :: Int -> Array Int
range count = 0 .. count

sequence :: Array Int -> Array Int
sequence input = map (\ n -> fib n ) input

result :: Int
result = sum (filter (\ n -> n < 4000000 && mod n 2 == 0) (sequence (range 35)))

main :: Effect Unit
main = do
  log ("fib of 5 position is: " <> show (fib 5))
  log ("range of first 35 numbers in fib is: " <> show (sequence (range 35)))
  log ("sum of numbers in fib exceed 4m is: " <> show result)