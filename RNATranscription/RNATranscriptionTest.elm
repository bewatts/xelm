module RNATranscriptionTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import RNATranscriptionExample exposing (toRNA)

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

tests : Test
tests = suite "RNATranscription Test Suite"
        [ test "transcribes cytosine to guanine" (assertEqual "G" (toRNA "C")),
          test "transcribes guanine to cytosine" (assertEqual "C" (toRNA "G")),
          test "transcribes adenine to uracil" (assertEqual "U" (toRNA "A")),
          test "transcribes thymine to adenine" (assertEqual "A" (toRNA "T")),
          test "transcribes all ACGT to UGCA" (assertEqual "UGCACCAGAAUU" (toRNA "ACGTGGTCTTAA"))
        ]

main = runDisplay tests
