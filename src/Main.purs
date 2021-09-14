module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

hello :: String -> String
hello str = "Hello, " <> str <> "!"

main :: String -> Effect Unit
main str = do
  log $ hello str
