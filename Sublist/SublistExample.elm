module SublistExample where
import List exposing (..)
import String

sublist : List a -> List a -> String
sublist alist blist =
  if alist == blist then "Equal" else
    if alist == [] then "Sublist" else
      if blist == [] then  "Superlist" else
        if inList alist blist then "Superlist" else
          if inList blist alist then "Sublist" else "Unequal"

inList : List a -> List a -> Bool
inList alist blist =
  let getLastInList sublist =
    case (List.tail sublist) of
      Just list -> list
      Nothing -> []

  in
    if (List.length alist) < (List.length blist) then False else
      if (List.take (List.length blist) alist) == blist then True else
        inList (getLastInList alist) blist
