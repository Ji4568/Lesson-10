###第一節：基本文字操作(1)
#資料處理中最討厭的部分就是文字的處理，他的自由度高暗示著資料可能很亂，因此文字處理需要非常多樣化的函數
#e在R的字串處理中要小心注意character、factor、numeric這三種類別的誤轉換和混用，尤其是factor是一種很討厭的格式，因為它在轉成數字和字串的時候，常常會變成跟原本不一樣的東西
#我們在這裡先介紹幾個簡單的字串處理函數：
#1-1. 字串黏合(不同物件)
paste("A", "B", sep = "")
#1-2. 字串黏合(同物件)
paste(c("A", "B"), collapse = "")
#2.字串分割
strsplit("A.B", split = "." , fixed = TRUE)
#3.部份穩合
x = c("AB", "AA")
grepl("B", x)
grepl("A", x)
#4.回傳出現位置
x = c("ABABC", "CCAAE")
gregexpr("A", x)
#5.子字串
substr("ndmc1234", 1, 4)
#6.字元取代
x = "AABB"
gsub("A", "C", x)
#7.計算字串長度
x = c("A","AAA","AAAAA")
nchar(x)
#8.大小寫切換
tolower("aBcDe")
toupper("aBcDe")

#基本文字操作(2)
#透過上述這些字串處理函數的組合，我們將可以做到許多神奇的事情，像是假設我們現在有一組email信箱，而你想要把其中的「@」之前的作為使用者帳號，那該怎麼辦呢?
#這是第一種作法，使用函數「strsplit」做字串分割：
emails = c("157373@mail.fju.edu.tw", "069201@mail.fju.edu.tw")
n.account = length(emails)
accounts = rep("", n.account)

splited_emails = strsplit(emails, split = "@" , fixed = TRUE)

for (i in 1:n.account) {
  accounts[i] = splited_emails[[i]][1]
}

accounts
#這是第二種作法，先使用函數「gregexpr」回傳「@」出現位置，再使用函數???substr???分離字串：
emails = c("157373@mail.fju.edu.tw", "069201@mail.fju.edu.tw")

n.account = length(emails)
accounts = rep("", n.account)

symbol_pos = gregexpr("@" , emails, fixed = TRUE)

for (i in 1:n.account) {
  accounts[i] = substr(emails[i], 1, symbol_pos[[i]][1] - 1)
}

accounts




