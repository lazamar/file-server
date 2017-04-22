{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Handler.Home where

import           Data.Default       (def)
import           Yesod              (Html, defaultLayout, setTitle)
import           Yesod.Default.Util (widgetFileNoReload)

import           Foundation         (Handler, getList)

getHomeR :: Handler Html
getHomeR = do
    filenames <- getList
    defaultLayout $ do
        setTitle "File Processor"
        $(widgetFileNoReload def "home")
