module Test.Main where

import Prelude
import Index (output)
import Effect (Effect)
import Test.Assert (assert)

main :: Effect Unit
main = do
  assert (output == 233168)