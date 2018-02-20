module ReverseString exposing (..)

import Html exposing (Html, text, div)
import String exposing (reverse)


awesomeString : String
awesomeString =
    "This is a string"


reverseString : String -> String
reverseString string =
    reverse string


main : Html a
main =
    div [] [ text (reverseString awesomeString) ]



-- With optional piping
-- div []
--     [ awesomeString
--         |> reverseString
--         |> text
--     ]
