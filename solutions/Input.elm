module Input exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


-- Oppgave 1: Model
-- a) Lag en type alias som heter Model. Model er en Record som inneholder en string.


type alias Model =
    { content : String
    }



-- b) Lag en record, model, som er en Model.


model : Model
model =
    { content = ""
    }



-- Oppgave 2: Update
-- a) Lag en type som heter Msg, som bare kan være én ting: UpdateContent String


type Msg
    = UpdateContent String



-- b) Lag en funksjon som heter "update". "update" tar inn en Msg og en Model, og returnerer en ny, oppdatert Model.
--    Den oppdaterte modellen skal inneholde stringen som kom inn via Msg.


update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateContent string ->
            { model | content = string }



-- Oppgave 3: View
-- a) Lag en funksjon som heter "view". Den tar inn en Model og returnerer Html Msg.
-- b) view skal vise stringen i model.
-- c) view skal også inneholde et tekst-input-felt, som genererer en UpdateText når man skriver noe.


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "skriv noe her", onInput UpdateContent ] []
        , div [] [ text (model.content) ]
        ]



-- Oppgave 4: Program
-- Lag en funksjon, main, som returnerer et Html.beginnerProgram.
-- beginnerProgram tar inn en record med model, view og update-funksjoner.


main : Program Never Model Msg
main =
    beginnerProgram { model = model, update = update, view = view }
