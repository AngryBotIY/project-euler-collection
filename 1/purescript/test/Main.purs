module Test.Main where

import Prelude

import Main (output)

import Test.Assert (assert)
import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  assert (output == 233168)
  log "Test passed! Output is: 233168"