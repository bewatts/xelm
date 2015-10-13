module GrainsTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import GrainsExample exposing (grainsOnSquare, totalGrains)

tests : Test
tests = suite "Grains Test Suite"
  [ test "square 1" (assertEqual 1 (grainsOnSquare 1)),
    test "square 2" (assertEqual 2 (grainsOnSquare 2)),
    test "square 3" (assertEqual 4 (grainsOnSquare 3)),
    test "square 4" (assertEqual 8 (grainsOnSquare 4)),
    test "square 16" (assertEqual 32768 (grainsOnSquare 16)),
    test "square 32" (assertEqual 2147483648 (grainsOnSquare 32)),
    test "square 64" (assertEqual 9223372036854775808 (grainsOnSquare 64)),
    test "total grains" (assertEqual 18446744073709551615 totalGrains)
  ]

main = runDisplay tests
