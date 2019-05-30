# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Cart.destroy_all

#test = 0 

#if User.where(email: 'catagram@yopmail.com').exists?
#		if Cart.where(user_id: User.id).exists?
#			puts "l'utisateur catagram@yopmail.com en mode admin était bien paramétré - pas de modif"

#		else
#			puts "l'utisateur catagram@yopmail.com en mode admin éxistait bien, on a créé son panier"			
#			cart = Cart.create(user_id: User.id)		
#		end
#else
	puts "Création de l'utisateur catagram@yopmail.com en mode admin avec création de son panier"

	User.create!(
		email: 'catagram@yopmail.com',
		password: 'azerty',
	    is_admin: true
		)
	cart = Cart.create(user_id: User.id)
#end



puts "Remise à zéro de la table item"
Item.destroy_all

Category.destroy_all

puts "-------------------------------"
puts "Création des categories "
puts "______________________________________________ "

5.times do
my_category = Category.create(title: Faker::Creature::Cat.breed)

end


puts "-------------------------------"
puts "Création des items avec 20 images différentes: "
puts "______________________________________________ "
puts "      - titre : nom de chat / source : Faker::Creature::Cat.name"
puts "      - description : 5 phrases / source : Faker::Lorem.paragraph(5)"
puts "      - price : aléatoire compris entre 5.00 et 70.00"
puts "      - images : link vers une image différente"

puts Category.all.sample
my_item = Item.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2015/03/27/13/16/cat-694730_1280.jpg", category_id: Category.all.sample.id)


my_item = Item.create(title: "Jasper"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Alfie"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2015/05/22/05/52/cat-778315_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Sooty"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2018/01/04/18/58/cats-3061372_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Smudge"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2018/03/29/21/51/cute-3273789_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Charlie"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2017/11/14/13/06/kitty-2948404_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Oliver"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2016/12/18/18/42/kittens-1916542_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Daisy"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2017/08/23/08/33/cats-eyes-2671903_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Oscar"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Lexi"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2016/09/07/22/38/cat-1652822_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Pepper"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Jake"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Princess"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2012/11/26/13/58/cat-67345_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Lucy"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2017/11/13/07/14/cat-eyes-2944820_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Zeus"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2013/01/25/13/03/cat-76116_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Dakota"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2014/10/01/16/36/siamese-468814_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Clochette"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2015/04/17/09/36/domestic-cat-726989_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Nordy"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2016/11/29/01/10/adorable-1866475_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Genesio"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2018/10/11/12/31/black-cat-3739702_1280.jpg", category_id: Category.all.sample.id)
my_item = Item.create(title: "Salt"  , description: Faker::Lorem.paragraph(5), price: rand(5..70), image_url:
"https://cdn.pixabay.com/photo/2017/03/27/14/09/animal-2178983_1280.jpg", category_id: Category.all.sample.id)

