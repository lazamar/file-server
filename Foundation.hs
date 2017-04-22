{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Foundation
    ( Handler
    , App (App)
    , Route (HomeR)
    , resourcesApp
    , getList
    ) where

import           Data.Text (Text)
import           Yesod     (Route, Yesod, getYesod, mkYesodData,
                            parseRoutesFile, renderRoute)

data App = App [Text]
instance Yesod App

-- This creates the 'Handler' type
-- and the 'resourcesApp' constant
mkYesodData "App" $(parseRoutesFile "config/routes")

getList :: Handler [Text]
getList = do
    App state <- getYesod
    return state{-/hi-}
