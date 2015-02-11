module Combobox where
-- Bible
import Html (..)
import Html.Attributes (..)
import Html.Events (..)
import Signal
import LocalChannel as LC
import Maybe
-- Custom

type alias Model = {}

type Action = NoOp

initialModel = {}

-- VIEW

view : Model -> Html
view model = if model.isAuthorized
                then viewAuth model
                else viewNotAuth model
