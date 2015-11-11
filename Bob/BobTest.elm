module BobTest where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

-- import BobExample exposing (responseFor) -- CI_ENABLE
import Bob exposing (responseFor) -- CI_DISABLE

tests : Test
tests = suite "Bob Test Suite"
  [ test "responds to something" (assertEqual "Whatever." (responseFor "Tom-ay-to, tom-aaaah-to.")),
    test "responds to shouts" (assertEqual "Whoa, chill out!" (responseFor "WATCH OUT!")),
    test "responds to questions" (assertEqual "Sure." (responseFor "Does this cryogenic chamber make me look fat?")),
    test "responds to forceful talking" (assertEqual "Whatever." (responseFor "Let's eat ice cream!")),
    test "responds to Acronyms" (assertEqual "Whatever." (responseFor "It's OK if you don't want to go to the DMV.")),
    test "responds to forceful questions" (assertEqual "Whoa, chill out!" (responseFor "DO YOU LIKE ICE CREAM?")),
    test "responds to shouting with special characters" (assertEqual "Whoa, chill out!" (responseFor "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")),
    test "responds to shouting with numbers" (assertEqual "Whoa, chill out!" (responseFor "3, 2, 1 GO!")),
    test "responds to shouting with no exclamation mark" (assertEqual "Whoa, chill out!" (responseFor "ICE CREAM")),
    test "responds to statement containing question mark" (assertEqual "Whatever." (responseFor "Ending with ? means a question.")),
    test "responds to silence" (assertEqual "Fine. Be that way!" (responseFor "")),
    test "responds to prolonged silence" (assertEqual "Fine. Be that way!" (responseFor "       ")),
    test "responds to no letters with question mark" (assertEqual "Sure." (responseFor "?")),
    test "responds to multiline questions" (assertEqual "Whatever." (responseFor "\nDoes this cryogenic chamber make me look fat? \nno")),
    test "responds to other whitespace" (assertEqual "Fine. Be that way!" (responseFor "\n\r \t\v\xA0\x2002")),
    test "responds to only numbers" (assertEqual "Whatever." (responseFor "1, 2, 3")),
    test "responds to question with only numbers" (assertEqual "Sure." (responseFor "4?")),
    test "responds to unicode shout" (assertEqual "Whoa, chill out!" (responseFor "\xdcML\xc4\xdcTS!")),
    test "responds to unicode non shout" (assertEqual "Whatever." (responseFor "\xdcML\xe4\xdcTS!"))

  ]

main = runDisplay tests -- CI_DISABLE
