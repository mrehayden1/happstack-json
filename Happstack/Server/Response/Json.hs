module Happstack.Server.Response.Json (
) where

import Data.ByteString.Char8 as B (pack)
import Data.ByteString.Lazy.Char8 as L (pack)

import Happstack.Server.Response (ToMessage(..))

import Text.JSON (JSValue, encode)

instance ToMessage JSValue where
  toContentType _    = B.pack "application/json"
  toMessage          = L.pack . encode
