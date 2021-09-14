module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Aff (launchAff_)
import Main (hello)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner (runSpec)

main :: Effect Unit
main =
  launchAff_
    $ runSpec [ consoleReporter ] do
        describe "hello" do
          it "returns 'Hello, world!' when given world" do
            hello "world" `shouldEqual` "Hello, world!"
