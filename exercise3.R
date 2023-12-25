###練習3：利用套件做出自動拼寫校正的建議程式
#假設現在你有一串文字描述，而內文有非常多可能打錯字的地方，像是這樣：
original_sentence = "I could’nt tell there friends"
#你要有能力用程式組合把他校正成這樣：
#拼寫正確但是語法錯誤的問題沒有辦法解決，但能寫出自動化的程式對個別單字做拼寫校正就已經很厲害了，試試看吧！

###練習3答案
#這是使用套件進行拼寫校正的成果，一些初步的錯誤可以被修正掉：
original_sentence = "I could’nt tell there friends"

splited_sentence = strsplit(original_sentence, " ")[[1]]
correct = hunspell_check(splited_sentence)

if (sum(!correct) > 0) {
  wrong_pos = which(!correct)
  for (i in wrong_pos) {
    splited_sentence[i] = hunspell_suggest(splited_sentence[i])[[1]][1]
  }
}

paste(splited_sentence, collapse = " ")

