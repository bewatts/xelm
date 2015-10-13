module GigasecondTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import Date exposing (..)

import GigasecondExample exposing (fromDay, getDateFromString, formatISO)

tests : Test
tests = suite "Gigasecond Test Suite"
  [ test "from jun 13 1977" (assertEqual "2009-02-19T01:46:40" (fromDay "1977-06-13")),
    test "from jul 19 1959" (assertEqual "1991-03-27T01:46:40 " (fromDay "1959-07-19 ")),
    test "date from string" (assertEqual (Date.fromString "1977-06-13") (Date.fromString "1977-06-13 ")),
    test "date from string" (assertEqual (getDateFromString "1977-06-13") (getDateFromString "1977-06-13 ")),
    test "date from string" (assertEqual (formatISO (getDateFromString "1977-06-13")) (formatISO (getDateFromString "1977-06-13 ")))

  ]

main = runDisplay tests
