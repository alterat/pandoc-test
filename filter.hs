#!/usr/bin/env runhaskell
import Text.Pandoc.JSON
import Text.Pandoc.Definition
import Data.List

main = toJSONFilter replaceQuote

replaceQuote :: Block -> Block
replaceQuote (BlockQuote b) = Div nullAttr b
replaceQuote b              = b

{-

removeAllQuotes :: [Block] -> [Block]
removeAllQuotes = concat . map removeQuotes
 
removeQuotes :: Block -> [Block]
removeQuotes (BlockQuote b) = [b]
-- removeQuotes (BlockQuote b) = [removeAllQuotes b]
-- that would remote at all levels
removeQuotes b = [b]

-}
