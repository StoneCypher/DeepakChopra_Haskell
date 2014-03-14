
import System.Random

dc_starts     = ["Experiential truth ", "The physical world ", "Non-judgment ", "Quantum physics "]
dc_middles    = ["nurtures an ", "projects onto ", "imparts reality to ", "constructs with "]
dc_qualifiers = ["abundance of ", "the barrier of ", "self-righteous ", "potential "]
dc_finishes   = ["marvel.", "choices.", "creativity.", "actions."]

dc_rand top = getStdRandom $ randomR(1, top)

dc_randl list = do
    idx <- (dc_rand $ length list)
    putStr(list !! (idx - 1))

main = do
    dc_randl dc_starts
    dc_randl dc_middles
    dc_randl dc_qualifiers
    dc_randl dc_finishes
    putStrLn ""    