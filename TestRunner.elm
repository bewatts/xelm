import String

import IO.IO exposing (..)
import IO.Runner exposing (Request, Response, run)
import ElmTest.Runner.Console exposing (runDisplay)
import ElmTest.Test exposing (..)

import LeapTest
import AccumulateTest
import RNATranscriptionTest
import SublistTest
import BobTest
import SumOfMultiplesTest
import StrainTest
import PointMutationsTest
import SpaceAgeTest
import AnagramTest
import NucleotideCountTest
import PhoneNumberTest
import GradeSchoolTest

tests : Test
tests = suite "ExercismTests"
        [ LeapTest.tests
        , AccumulateTest.tests
        , RNATranscriptionTest.tests
        , SublistTest.tests
        , BobTest.tests
        , SumOfMultiplesTest.tests
        , StrainTest.tests
        , PointMutationsTest.tests
        , SpaceAgeTest.tests
        , AnagramTest.tests
        , NucleotideCountTest.tests
        , PhoneNumberTest.tests
        , GradeSchoolTest.tests
        ]

port requests : Signal Request
port requests = run responses (runDisplay tests)

port responses : Signal Response
