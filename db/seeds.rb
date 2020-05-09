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


Admin.create(id:1, email: "admin@admin", password: "111111")


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


Shop.create(id:1, name: "松屋", phonenumber: "090-5555-6666", postal_code: "150-0041", address: "東京都渋谷区神南２丁目１９−１１", email: "shop@shop", open_time: "11:00", close_time: "19:00", lunch_limit: "14:00", dinner_limit: "19:00", password: "111111")
Shop.create(id:2, name: "長野ケーキ", phonenumber: "090-3333-6666", postal_code: "117-0032", address: "東京都練馬区谷原４丁目１１−６", email: "shops@shops", open_time: "11:30", close_time: "19:30", lunch_limit: "14:30", dinner_limit: "19:30", password: "222222")
Shop.create(id:3, name: "居酒屋 大蛇", phonenumber: "090-4444-6666", postal_code: "174-0045", address: "東京都板橋区西台３丁目４２−６", email: "ita@bashi", open_time: "11:00", close_time: "19:30", lunch_limit: "14:00", dinner_limit: "19:30", password: "333333")
Shop.create(id:4, name: "スナック 福", phonenumber: "090-1111-6666", postal_code: "115-0053", address: "東京都北区赤羽台３丁目４２−８", email: "kita@ku", open_time: "12:00", close_time: "18:00", dinner_limit: "18:00", password: "444444")
Shop.create(id:5, name: "sweet", phonenumber: "090-6666-6666", postal_code: "121-0815", address: "東京都足立区島根５丁目１７−２１", email: "adachi@ku", open_time: "11:15", close_time: "15:00", dinner_limit: "15:00", password: "555555")
Shop.create(id:6, name: "フーテンの寅", phonenumber: "090-7777-6666", postal_code: "125-0052", address: "東京都葛飾区柴又４丁目８−１４", email: "katsusika@ku", open_time: "12:00", close_time: "16:00", dinner_limit: "16:00", password: "666666")
Shop.create(id:7, name: "マックん", phonenumber: "090-2222-6666", postal_code: "132-0011", address: "東京都江戸川区瑞江５丁目１０−４", email: "edogawa@ku", open_time: "13:00", close_time: "19:00", dinner_limit: "19:00", password: "777777")
Shop.create(id:8, name: "peco", phonenumber: "090-8888-6666", postal_code: "167-0032", address: "東京都杉並区天沼９丁目１２−１０", email: "suginami@ku", open_time: "10:00", close_time: "14:00", dinner_limit: "14:00", password: "888888")
Shop.create(id:9, name: "居酒屋 大蛇 ２号店", phonenumber: "090-9999-6666", postal_code: "165-0027", address: "東京都中野区野方３丁目６", email: "nakano@ku", open_time: "10:30", close_time: "15:00", dinner_limit: "15:00", password: "999999")
Shop.create(id:10, name: "catering tokyo", phonenumber: "090-1111-1111", postal_code: "170-0001", address: "東京都豊島区西巣鴨１丁目４−４", email: "toyoshima@ku", open_time: "11:00", close_time: "17:00", dinner_limit: "17:00", password: "111222")
Shop.create(id:11, name: "アンダーザブリッジ", phonenumber: "090-6666-2222", postal_code: "116-0001", address: "東京都荒川区町屋４丁目１０−９", email: "arakawa@ku", open_time: "11:00", close_time: "19:00", lunch_limit: "14:00", dinner_limit: "19:00", password: "111333")
Shop.create(id:12, name: "ニュートン", phonenumber: "090-7777-3333", postal_code: "113-0001", address: "東京都文京区白山３丁目７", email: "bunnkyou@ku", open_time: "15:00", close_time: "19:30", dinner_limit: "19:30", password: "111444")
Shop.create(id:13, name: "もんじゃ", phonenumber: "090-5555-4444", postal_code: "111-0032", address: "東京都台東区浅草１丁目１−３", email: "daitou@ku", open_time: "11:00", close_time: "18:30", lunch_limit: "14:00", dinner_limit: "18:30", password: "111555")
Shop.create(id:14, name: "スワン", phonenumber: "090-3333-5555", postal_code: "169-0073", address: "東京都新宿区百人町５丁目３−１", email: "shinjuku@ku", open_time: "11:00", close_time: "19:00", lunch_limit: "14:00", dinner_limit: "19:00", password: "111666")
Shop.create(id:15, name: "居酒屋 大蛇 ３号店", phonenumber: "090-4444-7777", postal_code: "101-0003", address: "東京都千代田区一ツ橋２丁目６−２", email: "chiyoda@ku", open_time: "13:00", close_time: "17:00", dinner_limit: "17:00", password: "111777")
Shop.create(id:16, name: "スナック よしりん", phonenumber: "090-1111-8888", postal_code: "131-0046", address: "東京都墨田区京島１丁目４", email: "sumida@ku", open_time: "10:00", close_time: "17:00", lunch_limit: "14:00", dinner_limit: "17:00", password: "111888")
Shop.create(id:17, name: "スナック ゆうちゃん", phonenumber: "090-9999-9999", postal_code: "156-0051", address: "東京都世田谷区宮坂１丁目１−５", email: "setagaya@ku", open_time: "11:00", close_time: "18:00", lunch_limit: "14:00", dinner_limit: "18:00", password: "111999")
Shop.create(id:18, name: "スナック キリ", phonenumber: "090-1111-1111", postal_code: "106-00322", address: "東京都港区六本木３丁目１−５", email: "minato@ku", open_time: "13:00", close_time: "19:00", dinner_limit: "19:00", password: "222111")
Shop.create(id:19, name: "スナック ヤマノ", phonenumber: "090-8888-6666", postal_code: "104-0042", address: "東京都中央区入船２丁目３−５", email: "tyuuou@ku", open_time: "12:00", close_time: "16:00", dinner_limit: "19:00", password: "222333")
Shop.create(id:20, name: "スナック 大蛇", phonenumber: "090-8888-1111", postal_code: "135-8614", address: "東京都江東区豊洲２丁目１−３", email: "koutou@ku", open_time: "11:30", close_time: "19:00", lunch_limit: "14:30", dinner_limit: "19:00", password: "222444")
Shop.create(id:21, name: "スナック 山", phonenumber: "090-9999-1122", postal_code: "152-0001", address: "東京都目黒区中央町２丁目２−２", email: "meguro@ku", open_time: "11:00", close_time: "19:30", lunch_limit: "14:30", dinner_limit: "19:30", password: "222555")
Shop.create(id:22, name: "catering tokyo 2", phonenumber: "090-7777-1111", postal_code: "140-0014", address: "東京都品川区大井１丁目２−２", email: "shinagawa@ku", open_time: "12:00", close_time: "15:00", lunch_limit: "15:00", password: "222666")
Shop.create(id:23, name: "アンダーザブリッジ 2", phonenumber: "090-6666-4444", postal_code: "143-0012", address: "東京都大田区大森東２丁目２−３", email: "oota@ku", open_time: "11:00", close_time: "19:00", lunch_limit: "14:30", dinner_limit: "19:00", password: "222777")


Course.find_or_create_by(id:1, shop_id:1, introduction: "おすすめ！", name: "王道コース", maximum_people: "30", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:2, shop_id:1, introduction: "カレー！", name: "カレーコース", maximum_people: "30", minimum_people: "3", price: "2000")
Course.find_or_create_by(id:3, shop_id:2, introduction: "甘いものばかりです", name: "デザートコース", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:4, shop_id:2, introduction: "ケーキばかりです。", name: "ケーキコース", maximum_people: "30", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:5, shop_id:3, introduction: "写輪眼", name: "サスケくんコース", maximum_people: "20", minimum_people: "10", price: "2500")
Course.find_or_create_by(id:6, shop_id:3, introduction: "万華鏡", name: "大蛇コース", maximum_people: "30", minimum_people: "5", price: "4000")
Course.find_or_create_by(id:7, shop_id:4, introduction: "福", name: "福来たりコース", maximum_people: "25", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:8, shop_id:5, introduction: "味に自信あります", name: "デザートコース", maximum_people: "35", minimum_people: "5", price: "4500")
Course.find_or_create_by(id:9, shop_id:5, introduction: "おすすめ！", name: "王道コース", maximum_people: "35", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:10, shop_id:5, introduction: "プリン", name: "プリンコース", maximum_people: "35", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:11, shop_id:6, introduction: "寅さんの大好物", name: "寅コース", maximum_people: "30", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:12, shop_id:6, introduction: "おすすめ！", name: "フーテンの寅コース", maximum_people: "30", minimum_people: "5", price: "1500")
Course.find_or_create_by(id:13, shop_id:7, introduction: "おすすめ！", name: "ビックコース", maximum_people: "40", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:14, shop_id:7, introduction: "バーガー", name: "王道コース", maximum_people: "40", minimum_people: "5", price: "1500")
Course.find_or_create_by(id:15, shop_id:8, introduction: "おすすめ！", name: "pecoコース", maximum_people: "30", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:16, shop_id:8, introduction: "めっちゃうまい！", name: "pecoゴージャスコース", maximum_people: "30", minimum_people: "5", price: "4500")
Course.find_or_create_by(id:17, shop_id:9, introduction: "サスケくん❤♡", name: "サスケくんコース", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:18, shop_id:9, introduction: "４人衆コース", name: "君麻呂コース", maximum_people: "30", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:19, shop_id:10, introduction: "catering toyko", name: "THE ケータリング", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:20, shop_id:10, introduction: "説明不要", name: "王道コース", maximum_people: "35", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:21, shop_id:11, introduction: "荒川アンダーザブリッジ", name: "村長コース", maximum_people: "40", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:22, shop_id:11, introduction: "ナルシスト", name: "イケメンコース", maximum_people: "40", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:23, shop_id:12, introduction: "リンゴです", name: "重力コース", maximum_people: "50", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:24, shop_id:13, introduction: "月島", name: "もんじゃコース", maximum_people: "20", minimum_people: "5", price: "1500")
Course.find_or_create_by(id:25, shop_id:13, introduction: "海の幸！", name: "海鮮コース", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:26, shop_id:13, introduction: "お好み焼き＆もんじゃ", name: "王道コース", maximum_people: "30", minimum_people: "5", price: "4000")
Course.find_or_create_by(id:27, shop_id:14, introduction: "スワン", name: "白鳥コース", maximum_people: "45", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:28, shop_id:14, introduction: "新宿といえばこれ！", name: "新宿コース", maximum_people: "50", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:29, shop_id:15, introduction: "サスケくんの代わり...", name: "誰でもいい...", maximum_people: "30", minimum_people: "5", price: "3000")
Course.find_or_create_by(id:30, shop_id:15, introduction: "精鋭じゃしゅ", name: "蛇コース", maximum_people: "50", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:31, shop_id:16, introduction: "やさしい男です...。", name: "メンターコース", maximum_people: "30", minimum_people: "3", price: "7000")
Course.find_or_create_by(id:32, shop_id:16, introduction: "みっちり", name: "スパルタコース", maximum_people: "30", minimum_people: "3", price: "8000")
Course.find_or_create_by(id:33, shop_id:17, introduction: "いつも予想の斜め上を行きます。", name: "予想外コース", maximum_people: "30", minimum_people: "5", price: "5000")
Course.find_or_create_by(id:34, shop_id:17, introduction: "綺麗になりたい人はこれ", name: "美容コース", maximum_people: "30", minimum_people: "5", price: "6000")
Course.find_or_create_by(id:35, shop_id:18, introduction: "真面目人間", name: "真面目コース", maximum_people: "40", minimum_people: "5", price: "5000")
Course.find_or_create_by(id:36, shop_id:18, introduction: "頑張りすぎてる方はこれ", name: "お文具コース", maximum_people: "45", minimum_people: "1", price: "5500")
Course.find_or_create_by(id:37, shop_id:18, introduction: "ぽぽっぽ、ぽぽ", name: "きりたんぽコース", maximum_people: "40", minimum_people: "5", price: "6000")
Course.find_or_create_by(id:38, shop_id:19, introduction: "お肉を食べたいならこれ", name: "Java肉コース", maximum_people: "50", minimum_people: "5", price: "7000")
Course.find_or_create_by(id:39, shop_id:19, introduction: "カフェインを取りたいならこれ", name: "カフェインコース", maximum_people: "50", minimum_people: "5", price: "2500")
Course.find_or_create_by(id:40, shop_id:20, introduction: "タンパク質めっちゃ取れます。", name: "タンパク質コース", maximum_people: "50", minimum_people: "5", price: "8000")
Course.find_or_create_by(id:41, shop_id:20, introduction: "プロテインもあります。", name: "マッチョコース", maximum_people: "50", minimum_people: "5", price: "8500")
Course.find_or_create_by(id:42, shop_id:20, introduction: "デザートまで", name: "王道コース", maximum_people: "50", minimum_people: "5", price: "9000")
Course.find_or_create_by(id:43, shop_id:21, introduction: "健康的です。", name: "健康的コース", maximum_people: "30", minimum_people: "5", price: "5000")
Course.find_or_create_by(id:44, shop_id:21, introduction: "とにかくお菓子", name: "ジャンクコース", maximum_people: "30", minimum_people: "5", price: "1500")
Course.find_or_create_by(id:45, shop_id:22, introduction: "王道中の王道", name: "王道コース", maximum_people: "50", minimum_people: "5", price: "4500")
Course.find_or_create_by(id:46, shop_id:22, introduction: "ケータリングといえば！", name: "THE ケータリングコース", maximum_people: "30", minimum_people: "5", price: "5000")
Course.find_or_create_by(id:47, shop_id:23, introduction: "とにかくお団子", name: "お団子コース", maximum_people: "30", minimum_people: "5", price: "3500")
Course.find_or_create_by(id:48, shop_id:23, introduction: "おすすめ！", name: "王道コース", maximum_people: "30", minimum_people: "5", price: "2500")


Order.find_or_create_by(user_id:1, shop_id:1, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:2, shop_id:1, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:3, shop_id:2, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:4, shop_id:2, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:5, shop_id:3, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:6, shop_id:4, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:7, shop_id:4, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:8, shop_id:5, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:9, shop_id:5, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:10, shop_id:6, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:11, shop_id:6, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:12, shop_id:7, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:13, shop_id:7, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:14, shop_id:8, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:15, shop_id:8, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:16, shop_id:9, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:17, shop_id:9, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:18, shop_id:10, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:19, shop_id:10, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:20, shop_id:11, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:21, shop_id:11, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:22, shop_id:12, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:23, shop_id:12, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:24, shop_id:13, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:25, shop_id:13, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:26, shop_id:14, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:27, shop_id:14, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:28, shop_id:15, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:29, shop_id:15, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:30, shop_id:16, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:31, shop_id:16, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:32, shop_id:17, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:33, shop_id:17, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:34, shop_id:17, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:35, shop_id:18, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:36, shop_id:18, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:37, shop_id:19, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:38, shop_id:19, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:39, shop_id:20, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:40, shop_id:20, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:41, shop_id:21, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:42, shop_id:21, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:43, shop_id:22, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:44, shop_id:22, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:45, shop_id:23, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:46, shop_id:23, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")
Order.find_or_create_by(user_id:47, shop_id:23, user_name: "大蛇", shop_name: "松屋", course_name: "王道コース", delivery_address: "東京都渋谷区神南１丁目１９−１１ パークスクエア２ 4階", payment: "クレジットカード", option: "アレルギーあります。", people_number: "30", price: "3000", reserve_date: "2020-05-30", reserve_time: "11:00")
Order.find_or_create_by(user_id:48, shop_id:1, user_name: "サスケ", shop_name: "長野ケーキ", course_name: "季節限定", delivery_address: "東京都練馬区谷原４丁目１１−６", payment: "着払い", option: "アレルギーありません。", people_number: "25", price: "3000", reserve_date: "2020-06-25", reserve_time: "12:00")



















