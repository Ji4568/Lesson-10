###�ĤG�`�G���h���F��(1)
#�r��B�z���Q�����B�b��䰪�����סA���ɭԧڭ̭n��X��patten�O�D�`�������զX�A���O�ڭ̷Q�n��X�U�C�r�ꪺ�Ʀr�����A�o�ɭԧڭ̭n��˳B�z�O?
#�o�ɭԧڭ̥i�H�Q�Ρu���h���F���v�Ӵy�z�Y��patten����m�A���O�o�ˡG
x = c("abc123", "abcd12!34")
gsub("[^0-9]", "", x)
#�o�ӡu[^0-9]�v�������N��O��X���ݩ�0-9���Ҧ��r���A�Ө�ơugsub�v�h��U�ڭ̧�o�Ǧr�����N���Ŧr���A�p���ڭ̴N��u�d�U�Ʀr������
#�U���O�Ҧ����A�����Ϊk�G
## [1] "[Aa]     :: A �� a"
## [1] "[^1-9]   :: not 1:9"
## [1] "[1-9]    :: 1:9"
## [1] "[a-z]    :: a b c ... z"
## [1] "[A-Z]    :: A B C ... Z"
## [1] "[a-zA-Z] :: �Ҧ��^��r��"
## [1] "[W-z]    :: WXYZabc....z"
## [1] "[w-Z]    :: ���i�ϥ�!"
