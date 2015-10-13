module PhoneNumberExample where

import String

nums = ['1','2','3','4','5','6','7','8','9','0']

getNumber : String -> String
getNumber text = getValidNum (String.filter isDigit text)

isDigit : Char -> Bool
isDigit char = List.any (\n -> n == char) nums

getValidNum : String -> String
getValidNum num =
  if String.length num == 10 then num else
    if (String.length num == 11) && (String.left 1 num == "1") then String.dropLeft 1 num else
      String.repeat 10 "0"

printPretty : String -> String
printPretty input = formatNumber (getNumber input)


formatNumber : String -> String
formatNumber input = String.concat ["(", (String.slice 0 3 input),  ") ", (String.slice 3 6 input), "-", (String.slice 6 10 input)]
