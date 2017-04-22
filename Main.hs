module Main where

import           Yesod

import           Dispatch   ()
import           Foundation (App (App))

main :: IO ()
main = warp 3000 App
