module AccumulateTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import Accumulate exposing (accumulate)

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)
import String

square : Int -> Int
square x = x * x

tests : Test
tests = suite "Accumulate"
        [ test "[]] Accumulate" (assertEqual (accumulate square []) []),
          test "square Accumulate" (assertEqual (accumulate square [1,2,3]) [1,4,9]),
          test "toUpper Accumulate" (assertEqual (accumulate String.toUpper ["hello" , "world"]) ["HELLO","WORLD"]),
          test "reverse Accumulate" (assertEqual (accumulate String.reverse ["hello" , "world"]) ["olleh","dlrow"])
        ]
        
main = runDisplay tests
