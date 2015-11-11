module RNATranscriptionTest where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

-- import RNATranscriptionExample exposing (toRNA) -- CI_ENABLE
import RNATranscription exposing (toRNA) -- CI_DISABLE

tests : Test
tests = suite "RNATranscription Test Suite"
        [ test "transcribes cytosine to guanine" (assertEqual "G" (toRNA "C")),
          test "transcribes guanine to cytosine" (assertEqual "C" (toRNA "G")),
          test "transcribes adenine to uracil" (assertEqual "U" (toRNA "A")),
          test "transcribes thymine to adenine" (assertEqual "A" (toRNA "T")),
          test "transcribes all ACGT to UGCA" (assertEqual "UGCACCAGAAUU" (toRNA "ACGTGGTCTTAA"))
        ]

main = runDisplay tests -- CI_DISABLE
