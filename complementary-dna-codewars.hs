-- https://www.codewars.com/kata/554e4a2f232cdd87d9000038

module Codewars.Kata.DNA where
import Codewars.Kata.DNA.Types

--data Base = A | T | G | C
type DNA = [Base]

getComplement :: Base -> Base
getComplement b
    | b == A = T
    | b == T = A
    | b == G = C
    | b == C = G

dnaStrand :: DNA -> DNA
dnaStrand dna = [getComplement base | base <- dna]
