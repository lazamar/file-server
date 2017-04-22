{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}

module Main where

import           Data.Default
import           Yesod
import           Yesod.Default.Util

data App = App
instance Yesod App

-- mkYesod "App" [parseRoutes|
-- / HomeR GET
-- |]
mkYesod "App" $(parseRoutesFile "config/routes")

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    let filenames = ["LICENSE", "README.md", "stack.yaml"] :: [String]
    setTitle "File Processor"
--     toWidget [whamlet|
-- <h2>Previously submitted files
-- $if null filenames
--     <p>No files have been uploaded yet.
-- $else
--     <ul>
--         $forall filename <- filenames
--             <li>#{filename}
-- |]
    $(widgetFileNoReload def "home")

main :: IO ()
main = warp 3000 App
