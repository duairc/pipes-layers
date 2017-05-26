{-# LANGUAGE CPP #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

#if __GLASGOW_HASKELL__ >= 702
{-# LANGUAGE Safe #-}
#endif

module Pipes.Layers
    ()
where

-- layers --------------------------------------------------------------------
import           Control.Monad.Lift (MFunctor (hoist), MInvariant (hoistiso))


-- pipes ---------------------------------------------------------------------
import           Pipes.Core (Proxy)


------------------------------------------------------------------------------
instance MInvariant (Proxy a' a b' b) where
    hoistiso f _ = hoist f
