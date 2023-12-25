###練習2：利用正則表達式有效率的找出問題
#下列這些字串分別是50個人所設定的密碼：
x = c("KUJYW3A", "6yp7cfsxd", "fopKOLb", "0Ti5j9CVo", "YbdFfTy", "pqVb5RSO",
      "VqGAlm3WNw", "MBsnhKwAjT", "6qZDKlh", "2otWgVA", "q0bnD38", "PhEiD41",
      "MLf9naK", "Nn64XcER5", "MEGBXUL1", "bAeoV5wt8T", "qvjJfYMX", "vWcJRygs",
      "xuvDp2aB", "GuiraLx", "oNGYFgq4p", "KZoHvBO", "fzti6jekwd", "dLISnCv", 
      "LTHXGow", "sz4QhX5", "JBELeHr", "mgG6VAOD", "zaeNCRWwb", "UTVLBDxrth",
      "3LXAcJHzk", "7Tc0RJD", "xQvBtmOR", "vD3gjl6Z", "gZ2tShAVY", "9DQwZop",
      "YNZh6EaODH", "UjTMAne7D", "lyGTxu4", "7Iy1G4gPK", "rPZ0tlqM", "goLsQMc2",
      "bcvemkjftd", "Z6yrYx3q", "ReTYMxqlt", "Sd6BEHVCN", "Th8ZYWigq", "tqgr0oud", 
      "rAsRu4dw", "93w1nxe")
#我們的密碼規定如下，請你檢查出不符合規定的位置有哪些：
#密碼長度需要8碼以上(含8碼)
#密碼需要同時包含「大寫」、「小寫」、「數字」，只要缺少任一項即為有問題
#假設你夠快解決這個問題，那我們來個更進階的問題，如果我們要找出同時包含2個以上「大寫」、2個以上「小寫」、2個以上「數字」的密碼在哪，你找的出來嗎?
## [1]  4 14 16 34 40 44

###練習2答案
#要特別注意，標準答案是這個樣子的：
which(grepl("[A-Z].*[A-Z]", x) & grepl("[a-z].*[a-z]", x) & grepl("[0-9].*[0-9]", x) & nchar(x) >= 8)
