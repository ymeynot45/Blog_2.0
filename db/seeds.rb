User.Create(author: "karst",
            password: "karst",
            post_count: 0)

User.Create(author: "mike",
            password: "bikes",
            post_count: 0)

User.Create(author: "calvin",
            password: "hobbes",
            post_count: 0)



10.times do
  Post.create(title: Faker::Company.bs,
              content: Faker::Lorem.paragraphs(paragraph_count = 5)
              user_id: rand(1..3))
end

Tag.create(name: 'Food')
Tag.create(name: 'Ben')
Tag.create(name: 'Laura')
Tag.create(name: 'Shovel')
Tag.create(name: 'Alyssa The Grey')

10.times do
Unicorn.create(post_id: rand(1..10),
               tag_id:  rand(1..5))
end
