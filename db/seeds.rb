require 'faker'

10.times do
    user = User.create(name: Faker::LeagueOfLegends.champion)
  end

20.times do
    a = rand(1..10)
    user = User.find(a)
    pin = Pin.create(user_id: user.id, image_url: Faker::Internet.url('example.com', '/foobar.jpg'))
end

30.times do
    a = rand(1..10)
    b = rand(1..20)
    pin = Pin.find(b)
    user = User.find(a)
    comment = Comment.create(user_id: user.id, pin_id: pin.id, body: Faker::LeagueOfLegends.masteries)
end
