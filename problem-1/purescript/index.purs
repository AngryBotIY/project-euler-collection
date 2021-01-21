module Index where

import Prelude
import Data.List (List, range, filter)
import Data.Foldable (sum)
import Effect.Console (log)

input :: List Int
input = range 0 999

filtered :: List Int
filtered = filter (\x -> mod x 3 == 0 || mod x 5 == 0) input

output :: Int
output = sum filtered