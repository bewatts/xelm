module GradeSchoolExample where

import Dict exposing (..)
import Result exposing (toMaybe)
-- TODO: implement these classes
-- type Grade = Int
-- type Student = String
-- type School = Dict Int List String

schoolFromList : List (Int, String) -> Dict Int (List String)
schoolFromList schoolList = List.foldl (\tuple -> \dict -> addStudent (fst tuple) (snd tuple) dict)
  newSchool schoolList

schoolToList : Dict Int (List String) -> List (Int, List String)
schoolToList school = Dict.toList school

newSchool : Dict Int (List String)
newSchool = Dict.empty

addStudent : Int -> String -> Dict Int (List String) -> Dict Int (List String)
addStudent grade student school =
  Dict.insert grade (List.sort (student :: (studentsInGrade grade school))) school

gradeWithStudents : Int -> List String -> Dict Int (List String)
gradeWithStudents grade students = Dict.singleton grade (List.sort students)

studentsInGrade : Int -> Dict Int (List String) -> List String
studentsInGrade grade school =
  case (Dict.get grade school) of
    Just list -> list
    Nothing -> []
