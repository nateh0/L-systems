module Extensions where
import LSystem

-- https://en.wikipedia.org/wiki/L-system#Example_2:_fractal_(binary)_tree
fractalTree :: LSystem
fractalTree = LSystem "fractalTree" "X" [('X', "F[-X]+X"), ('F', "FF")] 45 10

-- https://algorithmicbotany.org/papers/abop/abop-ch1.pdf

-- p9 fig 1.7a
kochIsland :: LSystem
kochIsland = LSystem "kochIsland" "F-F-F-F" [('F', "F+FF-FF-F-F+F+FF-F-F+F+FF+FF-F")] 90 3

-- p9 fig 1.8
islandsLakes :: LSystem
islandsLakes = LSystem "islandsLakes" "F+F+F+F" [('F', "F+f-FF+F+FF+Ff+FF-f+FF-F-FF-Ff-FFF"), ('f', "ffffff")] 90 3

-- p10 fig 1.9b
squarePattern :: LSystem
squarePattern = LSystem "squarePattern" "F-F-F-F" [('F', "FF-F-F-F-FF")] 90 5

-- p12 fig 1.11a
-- adapted from the original description with the following rule:
-- Fl = FX, except first in replacement which is X
-- Fr = YF, except last in replacement which is Y
gosperHex :: LSystem
gosperHex = LSystem "gosperHex" "FX" [('X', "X+YF+ +YF-FX--FXFX-YF+"), ('Y', "-FX+YFYF++YF+FX--FX-Y")] 60 12

-- original

-- replaces the middle third of each edge of each new hexagon with another hexagon
hexagon :: LSystem
hexagon = LSystem "hexagon" "F--F--F--F--F--F" [('F', "G[++F--F--F--F--F--F]ffG"), ('G', "GGGG"), ('f', "ffff")] 30 3
