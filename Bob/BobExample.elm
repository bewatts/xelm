module BobExample where

import String exposing (..)

characters = "!@#$%^&*()-_=,.?1234567890"

responseFor : String -> String
responseFor statement =
  if String.trim(statement) == "" then "Fine. Be that way!" else
    if (isShout statement) && (hasWords statement) then "Whoa, chill out!" else
      if (String.right 1 statement) == "?" then "Sure." else "Whatever."



getWords : String -> String
getWords statement =
  (String.concat (String.words (String.filter isLetter statement)))

isLetter : Char -> Bool
isLetter letter = not (String.contains (String.fromChar letter) characters)

isShout : String -> Bool
isShout statement =
  (getWords statement) == String.toUpper((getWords statement))

hasWords : String -> Bool
hasWords statement = (getWords statement) /= ""
