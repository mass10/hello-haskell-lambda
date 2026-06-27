{-# LANGUAGE DeriveGeneric #-}
module Main where

import AWS.Lambda.Runtime (pureRuntime)
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics (Generic)

data Request = Request { message :: String } deriving Generic
instance FromJSON Request

data Response = Response { reply :: String } deriving Generic
instance ToJSON Response

handler :: Request -> Response
handler req = Response { reply = "Hello, " <> message req <> "!" }

main :: IO ()
main = pureRuntime handler
