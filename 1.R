###�Ĥ@�`�G�򥻤�r�ާ@(1)
#��ƳB�z���̰Q���������N�O��r���B�z�A�L���ۥѫװ��t�ܵ۸�ƥi��ܶáA�]����r�B�z�ݭn�D�`�h�ˤƪ����
#e�bR���r��B�z���n�p�ߪ`�Ncharacter�Bfactor�Bnumeric�o�T�����O���~�ഫ�M�V�ΡA�ר�Ofactor�O�@�ثܰQ�����榡�A�]�����b�ন�Ʀr�M�r�ꪺ�ɭԡA�`�`�|�ܦ���쥻���@�˪��F��
#�ڭ̦b�o�̥����дX��²�檺�r��B�z��ơG
#1-1. �r���H�X(���P����)
paste("A", "B", sep = "")
#1-2. �r���H�X(�P����)
paste(c("A", "B"), collapse = "")
#2.�r�����
strsplit("A.B", split = "." , fixed = TRUE)
#3.����í�X
x = c("AB", "AA")
grepl("B", x)
grepl("A", x)
#4.�^�ǥX�{��m
x = c("ABABC", "CCAAE")
gregexpr("A", x)
#5.�l�r��
substr("ndmc1234", 1, 4)
#6.�r�����N
x = "AABB"
gsub("A", "C", x)
#7.�p��r�����
x = c("A","AAA","AAAAA")
nchar(x)
#8.�j�p�g����
tolower("aBcDe")
toupper("aBcDe")

#�򥻤�r�ާ@(2)
#�z�L�W�z�o�Ǧr��B�z��ƪ��զX�A�ڭ̱N�i�H����\�h���_���Ʊ��A���O���]�ڭ̲{�b���@��email�H�c�A�ӧA�Q�n��䤤���u@�v���e���@���ϥΪ̱b���A���ӫ���O?
#�o�O�Ĥ@�ا@�k�A�ϥΨ�ơustrsplit�v���r����ΡG
emails = c("157373@mail.fju.edu.tw", "069201@mail.fju.edu.tw")
n.account = length(emails)
accounts = rep("", n.account)

splited_emails = strsplit(emails, split = "@" , fixed = TRUE)

for (i in 1:n.account) {
  accounts[i] = splited_emails[[i]][1]
}

accounts
#�o�O�ĤG�ا@�k�A���ϥΨ�ơugregexpr�v�^�ǡu@�v�X�{��m�A�A�ϥΨ��???substr???�����r��G
emails = c("157373@mail.fju.edu.tw", "069201@mail.fju.edu.tw")

n.account = length(emails)
accounts = rep("", n.account)

symbol_pos = gregexpr("@" , emails, fixed = TRUE)

for (i in 1:n.account) {
  accounts[i] = substr(emails[i], 1, symbol_pos[[i]][1] - 1)
}

accounts



