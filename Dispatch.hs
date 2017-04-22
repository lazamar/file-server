{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

-- show
module Dispatch where

import           Yesod        (mkYesodDispatch)

import           Foundation   (App, Route (HomeR), resourcesApp)
import           Handler.Home (getHomeR)

mkYesodDispatch "App" resourcesApp
