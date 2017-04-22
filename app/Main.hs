{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Main where

import           Handler.Home (tryme)
import           Yesod

data HelloWorld = HelloWorld
instance Yesod HelloWorld

mkYesod "HelloWorld" [parseRoutes|
/ HomeR GET
|]


getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|Hello World!|]

main :: IO ()
main = do
   tryme
   warp 3000 HelloWorld
