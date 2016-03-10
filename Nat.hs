module Nat where

import Kleisli

data Nat = Zero | Succ Nat
    deriving (Show, Eq, Ord)

instance Num Nat where
    (+) a Zero     = a
    (+) a (Succ b) = Succ (a + b)

    (*) a Zero     = Zero
    (*) a (Succ b) = a + (a * b)

    abs x       = x
    signum Zero = Zero
    signum _    = Succ Zero

    fromInteger 0 = Zero
    fromInteger n = Succ (fromInteger (n - 1))

    negate _ = error "negate is undefined for Nat"
