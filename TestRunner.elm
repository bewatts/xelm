import String

import IO.IO exposing (..)
import IO.Runner exposing (Request, Response, run)
import ElmTest.Runner.Console exposing (runDisplay)
import ElmTest.Test exposing (..)

import LeapTest
import AccumulateTest
import RNATranscriptionTest

tests : Test
tests = suite "ExercismTests"
        [ LeapTest.tests
        , RNATranscriptionTest.tests
        , AccumulateTest.tests
        ]

port requests : Signal Request
port requests = run responses (runDisplay tests)

port responses : Signal Response
