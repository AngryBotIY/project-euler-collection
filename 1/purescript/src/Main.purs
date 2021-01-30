module Main where

import Prelude
import Data.List (List, range, filter)
import Data.Foldable (sum)
import Effect (Effect)
import Effect.Console (log)

input :: List Int
input = range 0 999

filtered :: List Int
filtered = filter (\ n -> mod n 3 == 0 || mod n 5 == 0) input

output :: Int
output = sum filtered

main :: Effect Unit
main = log (show output)