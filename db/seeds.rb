# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id:1, name: "大蛇丸", phonenumber: "00011112222", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "orochi@maru", password: "111111")
User.create(id:2, name: "佐野", phonenumber: "090-0000-0000", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "sa@no", password: "222222")
User.create(id:3, name: "精鋭じゃしゅ", phonenumber: "090-0000-0000", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "13@13", password: "333333")

ShopGenre.find_or_create_by(id:1, name: "和風", genre_image_id: "")
ShopGenre.find_or_create_by(id:2, name: "洋風", genre_image_id: "")
ShopGenre.find_or_create_by(id:3, name: "中華", genre_image_id: "")
ShopGenre.find_or_create_by(id:4, name: "食えればなんでもOK", genre_image_id: "")
ShopGenre.find_or_create_by(id:5, name: "イタリアン", genre_image_id: "")
ShopGenre.find_or_create_by(id:6, name: "おうちでParty！！", genre_image_id: "")
ShopGenre.find_or_create_by(id:7, name: "葬式", genre_image_id: "")
ShopGenre.find_or_create_by(id:8, name: "結婚式", genre_image_id: "")
ShopGenre.find_or_create_by(id:9, name: "宴会", genre_image_id: "")
ShopGenre.find_or_create_by(id:10, name: "デザート", genre_image_id: "")
ShopGenre.find_or_create_by(id:11, name: "ジャンク", genre_image_id: "")

Shop.create(id:1, shop_genre_id:4 , name: "松屋", phonenumber: "090-5555-6666", postal_code: "150-0041", address: "東京都渋谷区神南２丁目１９−１１", email: "shop@shop", open_time: "11:00", close_time: "19:00", lunch_limit: "14:00", dinner_limit: "19:00", password: "111111")
Shop.create(id:2, shop_genre_id:10 ,name: "長野ケーキ", phonenumber: "090-3333-6666", postal_code: "117-0032", address: "東京都練馬区谷原４丁目１１−６", email: "shops@shops", open_time: "11:30", close_time: "19:30", lunch_limit: "14:30", dinner_limit: "19:30", password: "222222")
Shop.create(id:3, shop_genre_id:9 ,name: "居酒屋 大蛇", phonenumber: "090-4444-6666", postal_code: "174-0045", address: "東京都板橋区西台３丁目４２−６", email: "ita@bashi", open_time: "11:00", close_time: "19:30", lunch_limit: "14:00", dinner_limit: "19:30", password: "333333")



Admin.create(id:1, email: "admin@admin", password: "111111")





Course.find_or_create_by(id:1, shop_id:1, introduction: "おすすめ！", name: "王道コース", maximum_people: "30", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:2, shop_id:1, introduction: "カレー！", name: "カレーコース", maximum_people: "30", minimum_people: "3", price: "2000")
Course.find_or_create_by(id:3, shop_id:2, introduction: "甘いものばかりです", name: "デザートコース", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:4, shop_id:2, introduction: "ケーキばかりです。", name: "ケーキコース", maximum_people: "30", minimum_people: "5", price: "3500")
