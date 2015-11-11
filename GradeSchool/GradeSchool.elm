module GradeSchool where

import Dict exposing (..)
import Result exposing (toMaybe)

schoolFromList : List (Int, String) -> Dict Int (List String)
schoolFromList schoolList =
  Dict.empty

schoolToList : Dict Int (List String) -> List (Int, List String)
schoolToList school = 
  []

newSchool : Dict Int (List String)
newSchool = 
  Dict.empty

addStudent : Int -> String -> Dict Int (List String) -> Dict Int (List String)
addStudent grade student school =
  Dict.empty

gradeWithStudents : Int -> List String -> Dict Int (List String)
gradeWithStudents grade students =
  Dict.empty

studentsInGrade : Int -> Dict Int (List String) -> List String
studentsInGrade grade school =
  []
