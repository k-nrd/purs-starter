module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

-- | Takes a string, prepends `Hello, ` and appends `!` to it.
hello :: String -> String
hello str = "Hello, " <> str <> "!"

-- | Runs `hello` ad logs it. Comments like this end up in
-- | documentation generated when you run `spago docs`.
main :: String -> Effect Unit
main str = do
  log $ hello str
