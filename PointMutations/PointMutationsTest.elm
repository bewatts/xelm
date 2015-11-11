module PointMutationsTest where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

-- import PointMutationsExample exposing (hammingDistance) -- CI_ENABLE
import PointMutations exposing (hammingDistance) -- CI_DISABLE

import String

tests : Test
tests = suite "PointMutations Test Suite"
  [
    test "no difference between empty strands" (assertEqual 0 (hammingDistance "" "")),
    test "no difference between identical strands" (assertEqual 0 (hammingDistance "GGACTGA" "GGACTGA")),
    test "complete hamming distance in small strand" (assertEqual 3 (hammingDistance "ACT" "GGA")),
    test "small hamming distance in middle somewhere" (assertEqual 1 (hammingDistance "GGACG" "GGTCG")),
    test "larger distance" (assertEqual 2 (hammingDistance "ACCAGGG" "ACTATGG"))
  ]


main = runDisplay tests -- CI_DISABLE
