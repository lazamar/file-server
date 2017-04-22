{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Foundation where

import           Yesod (Yesod, mkYesodData, parseRoutesFile, renderRoute)

data App = App
instance Yesod App

mkYesodData "App" $(parseRoutesFile "config/routes")
