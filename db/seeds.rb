# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sessions = Issue.create(name: 'Jeff Sessions', description: 'Trump has nominated a racist for Attorney General')
electoral_college = Issue.create(name: 'Electoral College Reform', description: 'Trump lost the popular vote, this is bullshit')
dakota_pipeline = Issue.create(name: "Dakota Access Pipeline", description: "DAPL plans are on Native holy land")

call = Task.create(name: 'call your representative about Sessions', todo: 'phone call', resources: 'http://www.house.gov/htbin/findrep', issue_id: 1, creator_user_id: 1)
sign = Task.create(name: 'faithless electors', todo: 'sign a petition', resources: 'https://www.change.org/p/electoral-college-electors-electoral-college-make-hillary-clinton-president-on-december-19', issue_id: 2, creator_user_id: 2)
buy = Task.create(name: 'donate items to DAPL protestors', todo: 'go to wish list and buy them a thing', resources: 'http://sacredstonecamp.org/supply-list/', issue_id: 3, creator_user_id: 3)
donate = Task.create(name: 'donate money to DAPL protestors', todo: 'contribute to linked gofundme', resources: 'https://www.gofundme.com/sacredstonecamp', issue_id: 3, creator_user_id: 3)
#should tasks have a repeatable attribute? 

user1 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
user2 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
user3 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
user4 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password')
user5 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password')  


user_call1 = UserTask.create(user_id: user1.id, task_id: call.id, completed: true)
user_call2 = UserTask.create(user_id: user4.id, task_id: call.id, completed: false)
user_call3 = UserTask.create(user_id: user5.id, task_id: call.id, completed: false)

user_sign1 = UserTask.create(user_id: user1.id, task_id: sign.id, completed: false)
user_sign2 = UserTask.create(user_id: user2.id, task_id: sign.id, completed: true)
user_sign3 = UserTask.create(user_id: user5.id, task_id: sign.id, completed: false)


user_buy1 = UserTask.create(user_id: user1.id, task_id: buy.id, completed: false)
user_buy2 = UserTask.create(user_id: user3.id, task_id: sign.id, completed: true)
user_buy3 = UserTask.create(user_id: user4.id, task_id: sign.id, completed: false)

user_donate1 = UserTask.create(user_id: user1.id, task_id: buy.id, completed: false)
user_buy2 = UserTask.create(user_id: user3.id, task_id: buy.id, completed: true)
user_buy3 = UserTask.create(user_id: user4.id, task_id: buy.id, completed: false)
