###�m��2�G�Q�Υ��h���F�����Ĳv����X���D
#�U�C�o�Ǧr����O�O50�ӤH�ҳ]�w���K�X�G
x = c("KUJYW3A", "6yp7cfsxd", "fopKOLb", "0Ti5j9CVo", "YbdFfTy", "pqVb5RSO",
      "VqGAlm3WNw", "MBsnhKwAjT", "6qZDKlh", "2otWgVA", "q0bnD38", "PhEiD41",
      "MLf9naK", "Nn64XcER5", "MEGBXUL1", "bAeoV5wt8T", "qvjJfYMX", "vWcJRygs",
      "xuvDp2aB", "GuiraLx", "oNGYFgq4p", "KZoHvBO", "fzti6jekwd", "dLISnCv", 
      "LTHXGow", "sz4QhX5", "JBELeHr", "mgG6VAOD", "zaeNCRWwb", "UTVLBDxrth",
      "3LXAcJHzk", "7Tc0RJD", "xQvBtmOR", "vD3gjl6Z", "gZ2tShAVY", "9DQwZop",
      "YNZh6EaODH", "UjTMAne7D", "lyGTxu4", "7Iy1G4gPK", "rPZ0tlqM", "goLsQMc2",
      "bcvemkjftd", "Z6yrYx3q", "ReTYMxqlt", "Sd6BEHVCN", "Th8ZYWigq", "tqgr0oud", 
      "rAsRu4dw", "93w1nxe")
#�ڭ̪��K�X�W�w�p�U�A�ЧA�ˬd�X���ŦX�W�w����m�����ǡG
#�K�X���׻ݭn8�X�H�W(�t8�X)
#�K�X�ݭn�P�ɥ]�t�u�j�g�v�B�u�p�g�v�B�u�Ʀr�v�A�u�n�ʤ֥��@���Y�������D
#���]�A���ָѨM�o�Ӱ��D�A���ڭ̨ӭӧ�i�������D�A�p�G�ڭ̭n��X�P�ɥ]�t2�ӥH�W�u�j�g�v�B2�ӥH�W�u�p�g�v�B2�ӥH�W�u�Ʀr�v���K�X�b���A�A�䪺�X�Ӷ�?
## [1]  4 14 16 34 40 44

###�m��2����
#�n�S�O�`�N�A�зǵ��׬O�o�Ӽˤl���G
which(grepl("[A-Z].*[A-Z]", x) & grepl("[a-z].*[a-z]", x) & grepl("[0-9].*[0-9]", x) & nchar(x) >= 8)