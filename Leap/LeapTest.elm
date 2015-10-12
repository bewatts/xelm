module LeapTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import LeapExample exposing (isLeap)

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

tests : Test
tests = suite "Leap Test Suite"
        [ test "Yes, 1996 is a leap year" (assertEqual True (isLeap 1996)),
          test "No, 1997 is a leap year" (assertEqual False (isLeap 1997)),
          test "No, 1998 is a leap year" (assertEqual False (isLeap 1998)),
          test "No, 1900 is a leap year" (assertEqual False (isLeap 1900)),
          test "Yes, 2400 is a leap year" (assertEqual True (isLeap 2400))
        ]

main = runDisplay tests
