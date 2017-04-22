{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Handler.Home where

import           Data.Default       (def)
import           Yesod              (Html, defaultLayout, setTitle)
import           Yesod.Default.Util (widgetFileNoReload)

import           Foundation         (Handler)

getHomeR :: Handler Html
getHomeR = do
    let filenames = ["readme.txt", "report.pdf", "music.wav"] :: [String]
    defaultLayout $ do
        setTitle "File Processor"
        $(widgetFileNoReload def "home")
