10.times do
  Post.create(title: Faker::Company.bs,
              content: Faker::Lorem.paragraphs(paragraph_count = 5))
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
