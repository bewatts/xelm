module AnagramTest where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

-- import AnagramExample exposing (anagramsFor) -- CI_ENABLE
import Anagram exposing (anagramsFor) -- CI_DISABLE

tests : Test
tests = suite "Anagram test suite"
        [
        test "no matches" (assertEqual  [] (anagramsFor "diaper" ["hello", "world", "zombies", "pants"])),
        test "detect simple anagram" (assertEqual  ["tan"] (anagramsFor "ant" ["tan", "stand", "at"])),
        test "does not confuse different duplicates" (assertEqual  [] (anagramsFor "galea" ["eagle"])),
        test "eliminate anagram subsets" (assertEqual  [] (anagramsFor "good" ["dog", "goody"])),
        test "detect anagram" (assertEqual  ["inlets"]
                      (anagramsFor "listen" ["enlists", "google", "inlets", "banana"])),
        test "multiple anagrams" (assertEqual  ["gallery", "regally", "largely"]
                      (anagramsFor "allergy" ["gallery", "ballerina", "regally", "clergy", "largely", "leading"])),
        test "case insensitive anagrams" (assertEqual  ["Carthorse"]
                      (anagramsFor "Orchestra" ["cashregister", "Carthorse", "radishes"])),
        test "does not detect a word as its own anagram" (assertEqual  [] (anagramsFor "banana" ["banana"])),
        test "does not detect a word as its own anagram (case insensitive)" (assertEqual  [] (anagramsFor "Banana" ["baNana"]))
        ]

main = runDisplay tests -- CI_DISABLE
