###第二節：正則表達式(1)
#字串處理的討厭之處在於其高複雜度，有時候我們要找出的patten是非常複雜的組合，像是我們想要找出下列字串的數字部分，這時候我們要怎樣處理呢?
#這時候我們可以利用「正則表達式」來描述某些patten的位置，像是這樣：
x = c("abc123", "abcd12!34")
gsub("[^0-9]", "", x)
#這個「[^0-9]」的部分意思是找出不屬於0-9的所有字元，而函數「gsub」則協助我們把這些字元取代為空字元，如此我們就能只留下數字的部分
#下面是所有中括號的用法：
## [1] "[Aa]     :: A 或 a"
## [1] "[^1-9]   :: not 1:9"
## [1] "[1-9]    :: 1:9"
## [1] "[a-z]    :: a b c ... z"
## [1] "[A-Z]    :: A B C ... Z"
## [1] "[a-zA-Z] :: 所有英文字母"
## [1] "[W-z]    :: WXYZabc....z"
## [1] "[w-Z]    :: 不可使用!"

#正則表達式(2)
#另外我們可以使用大括號來描述我們可以允許的條件，像是這樣：
gsub(" {1,}", " ", "nice to  meet   you.")
#這行指令說明我們要把1個以上的連續空白改成只有1個空白，你也可以用下列規則解決：
## [1] "*        :: {0, }   至少出現 0次, 最多無限多次"
## [1] "+        :: {1, }   至少出現 1次, 最多無限多次"
## [1] "?        :: {0,1}   至少出現 0次, 最多出現 1次"
gsub(" +", " ", "nice to  meet   you.")

#正則表達式(3)
#小括號則是用來描述延伸字串的寫法，像是我們可以用這種方式來編寫：
x = c("medicine", "medical")
grepl("medic(ine|al)", x)
#除了「|」符號能拿來描述「or」之外，還有下面符號能使用
## [1] "$        :: 字尾限定"
## [1] "^        :: 字首限定"
## [1] "|        :: \"ABC|EFG\" --> grep(\"ABC\"or\"DEF\",x)"
## [1] ".        :: 任意字元"
x = c("how are you", "hi Jack", "nice to meet you")
grepl("you$", x)
grepl("^h", x)
grepl("h.*a", x)

#正則表達式(4)
#讓我們用正則表達式有效率的找出經緯度的位置吧！
dat = readLines("102年9月.txt", encoding = "UTF-8")

area.dat = grep("經緯度", dat, value = TRUE)
lat.pos = gregexpr("[北南]緯[0-9]+度[0-9]+\\.*[0-9]*分", area.dat)
lon.pos = gregexpr("[東西]經[0-9]+度[0-9]+\\.*[0-9]*分", area.dat)

n.area = length(area.dat)
lat.char = character(n.area)
lon.char = character(n.area)

for (i in 1:n.area) {
  
  lat.char[i] = substr(area.dat[i], lat.pos[[i]], lat.pos[[i]] + attr(lat.pos[[i]], "match.length") - 1)
  lon.char[i] = substr(area.dat[i], lon.pos[[i]], lon.pos[[i]] + attr(lon.pos[[i]], "match.length") - 1)
  
}

lat.char
lon.char
#字串取得後，文字轉數字就變得非常容易了，我們可以把單位切成3個部份：
lat = numeric(n.area)
lon = numeric(n.area)

for (i in 1:n.area) {
  
  splited_lat = strsplit(lat.char[i], "度")[[1]]
  splited_lat = gsub("[^0-9\\.]", "", splited_lat)
  splited_lat = as.numeric(splited_lat)
  lat[i] = splited_lat[1] + splited_lat[2] / 100 
  if (grepl("南緯", lat.char[i])) {lat[i] = -lat[i]}
  
  splited_lon = strsplit(lon.char[i], "度")[[1]]
  splited_lon = gsub("[^0-9\\.]", "", splited_lon)
  splited_lon = as.numeric(splited_lon)
  lon[i] = splited_lon[1] + splited_lon[2] / 100 
  if (grepl("西經", lon.char[i])) {lon[i] = -lon[i]}
  
}

lat
lon





