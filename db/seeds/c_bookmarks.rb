Bookmark.destroy_all

category_1 = Category.find_by(name: "Smartphones")
type_1 = Type.find_by(name: "Webpage")

p_01 = Bookmark.create(name: "p01", url: "wwww.p01.com")
p_01.categories << category_1
p_01.types << type_1

p_02 = Bookmark.create(name: "p02", url: "wwww.p02.com")
p_02.categories << category_1
p_02.types << type_1

p_03 = Bookmark.create(name: "p03", url: "wwww.p03.com")
p_03.categories << category_1
p_03.types << type_1

p_04 = Bookmark.create(name: "p04", url: "wwww.p04.com")
p_04.categories << category_1
p_04.types << type_1

p_05 = Bookmark.create(name: "p05", url: "wwww.p05.com")
p_05.categories << category_1
p_05.types << type_1


category_2 = Category.find_by(name: "Shoes")
type_2 = Type.find_by(name: "Paper")

p_06 = Bookmark.create(name: "p06", url: "wwww.p06.com")
p_06.categories << category_2
p_06.types << type_2

p_07 = Bookmark.create(name: "p07", url: "wwww.p07.com")
p_07.categories << category_2
p_07.types << type_2

p_08 = Bookmark.create(name: "p08", url: "wwww.p08.com")
p_08.categories << category_2
p_08.types << type_2

p_09 = Bookmark.create(name: "p09", url: "wwww.p09.com")
p_09.categories << category_2
p_09.types << type_2

p_10 = Bookmark.create(name: "p10", url: "wwww.p10.com")
p_10.categories << category_2
p_10.types << type_2

category_3 = Category.find_by(name: "Accesories")
type_3 = Type.find_by(name: "Video")

p_11 = Bookmark.create(name: "p11", url: "wwww.p11com")
p_11.categories << category_3
p_11.types << type_3

p_12 = Bookmark.create(name: "p12", url: "wwww.p12.com")
p_12.categories << category_3
p_12.types << type_3

p_13 = Bookmark.create(name: "p13", url: "wwww.p13.com")
p_13.categories << category_3
p_13.types << type_3

p_14 = Bookmark.create(name: "p14", url: "wwww.p14.com")
p_14.categories << category_3
p_14.types << type_3

p_15 = Bookmark.create(name: "p15", url: "wwww.p15.com")
p_15.categories << category_3
p_15.types << type_3

category_4 = Category.find_by(name: "Food")
type_4 = Type.find_by(name: "Video")

p_16 = Bookmark.create(name: "p16", url: "wwww.p16.com")
p_16.categories << category_4
p_16.types << type_4

p_17 = Bookmark.create(name: "p17", url: "wwww.p17.com")
p_17.categories << category_4
p_17.types << type_4

p_18 = Bookmark.create(name: "p18", url: "wwww.p18.com")
p_18.categories << category_4
p_18.types << type_4

p_19 = Bookmark.create(name: "p19", url: "wwww.p19.com")
p_19.categories << category_4
p_19.types << type_4

p_20 = Bookmark.create(name: "p20", url: "wwww.p20.com")
p_20.categories << category_4
p_20.types << type_4