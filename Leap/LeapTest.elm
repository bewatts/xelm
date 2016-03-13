module LeapTest where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

-- import LeapExample exposing (isLeap) -- CI_ENABLE
import Leap exposing (isLeap) -- CI_DISABLE

tests : Test
tests = suite "Leap Test Suite"
        [ test "Yes, 1996 is a leap year" (assert (isLeap 1996)),
          test "No, 1997 is a leap year" (assert (not (isLeap 1997))),
          test "No, 1998 is a leap year" (assert (not (isLeap 1998))),
          test "No, 1900 is a leap year" (assert (not (isLeap 1900))),
          test "Yes, 2400 is a leap year" (assert (isLeap 2400))
        ]

main = runDisplay tests -- CI_DISABLE
