###�m��1�G�B�z�b�榡�ƪ���r���
#�o�̦��@���F����ƶ}�񥭥x�Ҵ��Ѫ��u���s��T�v�A�䤤�ڭ̧Q�Ρu102�~9��v����ƨӰ���r�B�z���m�ߡA�ФU����102�~9��.txt���ɮסG
#�ڭ̳o�̭n�Ψ��ơureadLines�v�Ӷi��Ū�ɡG
dat = readLines("102�~9��.txt", encoding = "UTF-8")
head(dat)
#�A�|�o�{�@��Ʊ��A���N�O�L���O���өT�w���榡�A���榡�ä��O�D�`�Τ@�C�{�b�ЧA�յۧ�g�n�����ܬ��ƭȮ榡(�n�`�N�n�n/�_�n�B�F�g/��g���t�O��)
#�p�G�A�৹�����ܧ��A���A�N�����|�f�t�W�@�`�ҩҾǨ쪺�a�z��T��ı�Ƥ覡�A����s�X�S�����I�����аO�b�a�ϤW�I
library(RgoogleMaps)

lon = c(107.02, 103.3444, 112.402, 117.417, 103.37, 104.05, 98.45)
lat = c(10.13, 1.0918, -7.099, -0.164, 1.07, 4.52, 3.58)

center = c(mean(lat), mean(lon))
zoom = min(MaxZoom(range(lat), range(lon)))

MysubMap = GetMap(center = center, zoom = zoom, maptype = "satellite", API_console_key = 'AIzaSyA4DVFtF70aXE7RgrXViy2z5Ku2pMkVxFI')
PlotOnStaticMap(MysubMap)
PlotOnStaticMap(MysubMap, lat = lat, lon = lon, pch = 19, col = '#FF000080', add = TRUE)

###�m��1����
#�����ڭ̭n����g�n�פ��ΥX�ӡG
dat = readLines("102�~9��.txt", encoding = "UTF-8")

dat1 = dat[grepl("�g�n�סG", dat)]
dat2 = gsub('�g�n�סG', "", dat1)
dat3 = strsplit(dat2, '�B')

lat = rep(NA, length(dat3))
lon = rep(NA, length(dat3))

for (i in 1:length(dat3)) {
  
  if (grepl('�n', dat3[[i]][[1]])) {lat_sign = -1} else {lat_sign = 1}
  current_lat = strsplit(dat3[[i]][[1]], '��')
  current_lat = gsub('�_�n', '', current_lat[[1]])
  current_lat = gsub('�n�n', '', current_lat)
  current_lat = gsub('��', '', current_lat)
  current_lat = as.numeric(current_lat)
  
  lat[i] = (current_lat[1] + current_lat[2] / 100) * lat_sign
  
  if (grepl('��', dat3[[i]][[2]])) {lon_sign = -1} else {lon_sign = 1}
  current_lon = strsplit(dat3[[i]][[2]], '��')
  current_lon = gsub('�F�g', '', current_lon[[1]])
  current_lon = gsub('��g', '', current_lon)
  current_lon = gsub('��', '', current_lon)
  current_lon = as.numeric(current_lon)
  
  lon[i] = (current_lon[1] + current_lon[2] / 100) * lon_sign
  
}
