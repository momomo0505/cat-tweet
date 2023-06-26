test_user_1 = User.create(nickname: "太郎", email: "taro@taro", password: "tarotaro")
test_user_2 = User.create(nickname: "花子", email: "hanako@hanako", password: "hanakohanako")

item_1 = Fail.new(
 title: "まみ",
 category_id: 7,
 price: 50000,
 user_id: test_user_1.id
 )
item_1.image.attach(io: File.open(Rails.root.join("./app/assets/images/smartphone.png")), filename: 'smartphone.png')
item_1.save

item_2 = Fail.new(
 title: "クーちゃん",
 category_id: 3,
 price: 1000,
 user_id: test_user_2.id
 )
item_2.image.attach(io: File.open(Rails.root.join("./app/assets/images/clothes.png")), filename: 'clothes.png')
item_2.save

item_3 = Fail.create(
 title: "ドライヤー",
 category_id: 7,
 price: 3000,
 user_id: test_user_2.id
 )
item_3.image.attach(io: File.open(Rails.root.join("./app/assets/images/hairdryer.png")), filename: 'hairdryer.png')
item_3.save