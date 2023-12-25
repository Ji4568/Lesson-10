###第三節：文字相似度與拼寫校正(1)
#學會處理文字資訊了以後，下個問題是我們能不能對文字做更進一步的分析。在這裡我們先從一個最簡單的分析開始，就是分析兩串文字的相似度：
#套件「stringdist」中的函數「stringsim」能快速的協助我們做出文字相似度的比較
library(stringdist)
stringsim("abcde", "abcdfg", method = "cosine")
#這裡的「method = “cosine”」指的是把所有的字拆解成單字向量，並且計算兩者之間的餘弦值，因此調換文字順序對於這個檢測並沒有用。
library(stringdist)
stringsim("abcd", "cabd", method = "cosine")

#文字相似度與拼寫校正(2)
#有了這個概念之後，我們就能理解如何做出拼寫校正了。
#套件「hunspell」中的函數「hunspell」能快速的協助我們做出拼寫校正：
library(hunspell)
words = c("beer", "wiskey", "wine")
correct = hunspell_check(words)
hunspell_suggest(words)
#至於他的字典在哪裡呢?我們可以在這裡找到：
dictionary("en_US")



