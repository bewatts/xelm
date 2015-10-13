module AnagramExample where

import List
import String

anagramsFor : String -> List String -> List String
anagramsFor word candidates = (List.filter (isAnagram word) candidates)

isAnagram : String -> String -> Bool
isAnagram word1 word2 = not (sameWord word1 word2) && (sameLetters word1 word2)

alphabetizeWord : String -> List Char
alphabetizeWord word = List.sort (String.toList (String.toLower word))

sameWord : String -> String -> Bool
sameWord word1 word2 = (String.toLower word1) == (String.toLower word2)

sameLetters : String -> String -> Bool
sameLetters word1 word2 = (alphabetizeWord word1) == (alphabetizeWord word2)
