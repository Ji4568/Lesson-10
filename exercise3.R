###�m��3�G�Q�ήM�󰵥X�۰ʫ��g�ե�����ĳ�{��
#���]�{�b�A���@���r�y�z�A�Ӥ��妳�D�`�h�i�ॴ���r���a��A���O�o�ˡG
original_sentence = "I could��nt tell there friends"
#�A�n����O�ε{���զX��L�ե����o�ˡG
#���g���T���O�y�k���~�����D�S����k�ѨM�A����g�X�۰ʤƪ��{����ӧO��r�����g�ե��N�w�g�ܼF�`�F�A�ոլݧa�I

###�m��3����
#�o�O�ϥήM��i����g�ե������G�A�@�Ǫ�B�����~�i�H�Q�ץ����G
original_sentence = "I could��nt tell there friends"

splited_sentence = strsplit(original_sentence, " ")[[1]]
correct = hunspell_check(splited_sentence)

if (sum(!correct) > 0) {
  wrong_pos = which(!correct)
  for (i in wrong_pos) {
    splited_sentence[i] = hunspell_suggest(splited_sentence[i])[[1]][1]
  }
}

paste(splited_sentence, collapse = " ")
