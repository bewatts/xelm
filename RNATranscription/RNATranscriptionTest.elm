module RNATranscriptionTest where

-- TODO - remove example inclusion once Problem sets are ready to go live or CI is set up.

import RNATranscription exposing (toRNA)

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

tests : Test
tests = suite "RNATranscription Test Suite"
        [ test "transcribes cytosine to guanine" (assertEqual (toRNA "C") "G"),
          test "transcribes guanine to cytosine" (assertEqual  (toRNA "G") "C"),
          test "transcribes adenine to uracil" (assertEqual  (toRNA "A") "U"),
          test "transcribes thymine to adenine" (assertEqual  (toRNA "T") "A"),
          test "transcribes all ACGT to UGCA" (assertEqual  (toRNA "ACGTGGTCTTAA") "UGCACCAGAAUU")
        ]

main = runDisplay tests
