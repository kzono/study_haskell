{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_sample01 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/bin"
libdir     = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/lib/x86_64-linux-ghc-8.2.2/sample01-0.1.0.0-1hjdQ6FTfbs9kMlFHMmhay"
dynlibdir  = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/share/x86_64-linux-ghc-8.2.2/sample01-0.1.0.0"
libexecdir = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/libexec/x86_64-linux-ghc-8.2.2/sample01-0.1.0.0"
sysconfdir = "/mnt/disk3/workArea/projects/study_haskell/myCodes/HspecSamples/sample01/.stack-work/install/x86_64-linux/lts-10.3/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "sample01_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "sample01_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "sample01_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "sample01_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "sample01_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "sample01_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
