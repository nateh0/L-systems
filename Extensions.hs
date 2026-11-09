module Extensions where
import LSystem

-- https://en.wikipedia.org/wiki/L-system#Example_2:_fractal_(binary)_tree
fractalTree :: LSystem
fractalTree = LSystem "fractalTree" "X" [('X', "F[-X]+X"), ('F', "FF")] 45 10
