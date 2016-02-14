# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

users = User.create([
    { name: 'Jack', email: 'jack@petsitter.com', password: '12345678', password_confirmation: '12345678', age: 28, avatar: 'avatar-user-default.png', phone: '+380881122333' },
    { name: 'Alice', email: 'alice@petsitter.com', password: '12345678', password_confirmation: '12345678', age: 23, avatar: 'avatar-user-default.png', phone: '+380882233444' },
    { name: 'Jessie', email: 'jessiedsd@petsitter.com', password: '12345678', password_confirmation: '12345678', age: 30, avatar: 'avatar-user-default.png', phone: '+380883344555' },
    { name: 'Jessie', email: 'jessie@petsitter.com', password: '12345678', password_confirmation: '12345678', age: 30, avatar: 'avatar-user-default.png', phone: '+380883344555' }
  ])

pets = Pet.create([
    { name: 'Buddy', gender: 'male', age: 5, description: 'The Border Collie is a breed of dog that was originally bred to help herd sheep. It is an energetic fun dog and is considered the most intelligent of the dog breeds.', avatar: 'avatar-pet-default.png', user: users[0] },
    { name: 'Chloe', gender: 'female', age: 2, description: 'The German Shepherd is one of the most popular breeds of dogs in the United States. It is friendly, strong, protective, and loyal.', avatar: 'avatar-pet-default.png', user: users[1] },
    { name: 'Charlie', gender: 'male', age: 3, description: 'The Dachshund is a small dog with a long body and short legs. It is a very popular dog breed in the United States and has a great lively and friendly personality. Because of their long body they are often called wiener dogs or hot dogs.', avatar: 'avatar-pet-default.png', user: users[2] },
    { name: 'Daisy', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[2] },
    { name: 'Jack', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[2] },
    { name: 'Dogmeat', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[2] },
    { name: 'Pal', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[0] },
    { name: 'Paul', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[0] },
    { name: 'Freddy', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[0] },
    { name: 'Max', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[3] },
    { name: 'Rex', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[3] },
    { name: 'Jack', gender: 'female', age: 4, description: 'The Golden Retriever is one of the more popular dogs in the United States. It makes an excellent pet as well as a work dog. It is a medium size dog known for its golden coat.', avatar: 'avatar-pet-default.png', user: users[3] }
  ])

orders = Order.create([
    { start_date: Time.now + 2.days, end_date: Time.now + 7.days, user: users[0], pet: users[0].pets[0], title: 'Поcидіти з котіком', description: 'їду закордон,потрібна взяти кота на тиждень' },
    { start_date: Time.now + 5.days, end_date: Time.now + 10.days, user: users[2], pet: users[2].pets[1], title: 'Поcидіти з пітоном', description: 'їду закордон,потрібна взяти пітона на тиждень' },
    { start_date: Time.now + 5.days, end_date: Time.now + 10.days, user: users[2], pet: users[2].pets[1], title: 'Поcидіти з собакою', description: 'їду закордон,потрібна взяти собаку на тиждень' }
  ])

requests = Request.create([
    { message: 'Hello. I would like to sit with your pet during your vacation', state: 'pending', user: users[1], order: orders[0] },
    { message: 'Good day. You have such a nice pet. I could sit with her.', state: 'pending', user: users[1], order: orders[1] }
  ])
