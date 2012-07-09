{-# LANGUAGE OverloadedStrings #-}
import Network.Wai.Application.Static
import Network.Wai.Handler.Warp (run)
import System.Environment

main :: IO ()
main = do
  port <- getEnv "PORT"
  run (fromIntegral $ read port) $ staticApp defaultFileServerSettings {
     ssFolder = fileSystemLookup "_site"
    ,ssMaxAge  = MaxAgeForever
    ,ssListing = Nothing
    }
