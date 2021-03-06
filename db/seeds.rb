# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
num_users = 24
max_items = 12
news_posts = 6
max_photos = 6

num_users.times do
  email = Faker::Internet.unique.email
  password = 'password'

  @user = User.create(email: email,
                      password: password,)

  Profile.create(user_id: @user.id,
                 first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 display_name: Faker::Internet.user_name,
                 street: Faker::Address.street_address,
                 city: Faker::Address.city,
                 state: Faker::Address.state,
                 postcode: Faker::Address.postcode,
                 country: Faker::Address.country,
                 home_phone: Faker::PhoneNumber.phone_number,
                 work_phone: Faker::PhoneNumber.phone_number,
                 mobiile_phone: Faker::PhoneNumber.phone_number,
                 facebook: Faker::Internet.url('facebook.com'),
                 instagram: Faker::Internet.url('instagram.com'),
                 twitter: Faker::Internet.url('twitter.com'),
                 avatar: Faker::Avatar.image)

  rand(max_items).times do
    @item = Item.create(user_id: @user.id,
                        name: Faker::Commerce.product_name,
                        description: Faker::Lorem.paragraph,
                        category: Faker::Commerce.department(1),
                        price: Faker::Commerce.price,
                        active: Faker::Boolean.boolean(0.2))
    if rand(1)
      Post.create(user_id: @user.id,
                  item_id: @item.id,
                  title: Faker::Lorem.sentence,
                  content: Faker::Lorem.paragraph)
    end
    rand(1..max_photos).times do
      Photo.create(item_id: @item.id,
                   path: "http://loremflickr.com/300/300/jewellery?random=#{@item.id}")
    end
  end

  news_posts.times do
    Post.create(user_id: 1,
                item_id: nil,
                title: Faker::Lorem.sentence,
                content: Faker::Lorem.paragraph)
  end
end

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Faker::UniqueGenerator.clear
