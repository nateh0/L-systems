module Extensions where
import LSystem

-- https://en.wikipedia.org/wiki/L-system#Example_2:_fractal_(binary)_tree
fractalTree :: LSystem
fractalTree = LSystem "fractalTree" "X" [('X', "F[-X]+X"), ('F', "FF")] 45 10

-- https://algorithmicbotany.org/papers/abop/abop-ch1.pdf

-- p9 fig 1.7a
kochIsland :: LSystem
kochIsland = LSystem "kochIsland" "F-F-F-F" [('F', "F+FF-FF-F-F+F+FF-F-F+F+FF+FF-F")] 90 3
