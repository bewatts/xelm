module SumOfMultiplesTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import SumOfMultiplesExample exposing (sumOfMultiples)

tests : Test
tests = suite "Sum Of Multiples Test Suite"
  [ test "[3, 5] 15" (assertEqual 45 (sumOfMultiples [3, 5] 15)),
    test "[7, 13, 17] 20" (assertEqual 51 (sumOfMultiples [7, 13, 17] 20)),
    test "[4, 6] 15" (assertEqual 30 (sumOfMultiples [4, 6] 15)),
    test "[5, 6, 8] 150" (assertEqual 4419 (sumOfMultiples [5, 6, 8] 150)),
    test "[43, 47] 10000" (assertEqual 2203160 (sumOfMultiples [43, 47] 10000)),
    test "[5, 25] 51" (assertEqual 275 (sumOfMultiples [5, 25] 51))

  ]

main = runDisplay tests
