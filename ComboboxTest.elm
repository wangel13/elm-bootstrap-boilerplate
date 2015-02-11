module ComboboxTest where
-- Bible
import Html (..)
import Html.Attributes (..)
import Html.Events (..)
import Debug
import Signal
import LocalChannel as LC
import Maybe
-- Custom

type alias Model = {}

type Action = NoOp
            | ComboAction

initialModel = {}

-- VIEW

view : Model -> Html
view model = div [class "container"]
  [ h3 [] [text "Test"]
  --, Login.view (LC.create LoginAction actionChannel) model.loginScreen
  ]

main : Signal Html
main =
  Signal.map view modelSignal

actionChannel : Signal.Channel Action
actionChannel =
  Signal.channel NoOp

modelSignal : Signal Model
modelSignal =
  Signal.foldp update initialModel (Signal.subscribe actionChannel)

update : Action -> Model -> Model
update action0 model =
    case Debug.watch "action" action0 of
      _ -> model