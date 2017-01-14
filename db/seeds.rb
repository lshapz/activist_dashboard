# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

climate = Issue.create(name: "Climate Change")
education = Issue.create(name: "Education")
equality = Issue.create(name: "Equality")
economy = Issue.create(name: "Economy")
foreign = Issue.create(name: "Foreign Policy")
healthcare = Issue.create(name: "Healthcare")
d = "donate"
sierra = Task.create(name: "Sierra Club", todo: d, resources: "https://vault.sierraclub.org/ways-to-give/#donate-maintab", issue_id: 1, money: true, approved: true)

boysngirls = Task.create(name: "Boys & Girls Clubs of America", todo: d, resources: "http://greatfutures.org/pages/waystogive.aspx?_ga=1.12737010.43999393.1478702949", issue_id: 2, money: true, approved: true)

trevor = Task.create(name: "Trevor Project", todo: d, resources: "https://give.thetrevorproject.org/checkout/donation?eid=63307", issue_id: 3, money: true, approved: true)

naacp = Task.create(name: "NAACP", todo: d, resources: "https://donate.naacp.org/page/contribute/make-a-contribution", issue_id: 3, money: true, approved: true)

jobs = Task.create(name: "National Jobs for All", todo: d, resources: "http://njfac.org/index.php/support-njfac/", issue_id: 4, money: true, approved: true)

kind = Task.create(name: "Kids In Need of Defense (Kind)", todo: d, resources: "https://supportkind.org/donate/", issue_id: 5, money: true, approved: true)

crisis = Task.create(name: "Crisis Text Line", todo: "volunteer", resources: "http://www.crisistextline.org/join-our-efforts/volunteer/", issue_id: 6, approved: true)


  # create_table "tasks", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "todo"
  #   t.string   "resources"
  #   t.integer  "issue_id"
  #   t.integer  "creator_user_id"
  #   t.boolean  "in_person",       default: false
  #   t.boolean  "money",           default: false
  #   t.boolean  "approved",        default: false
  #   t.datetime "created_at",                      null: false
  #   t.datetime "updated_at",                      null: false
  # end


# sessions = Issue.create(name: 'Jeff Sessions', description: 'Trump has nominated a racist for Attorney General')
# electoral_college = Issue.create(name: 'Electoral College Reform', description: 'Trump lost the popular vote, this is bullshit')
# dakota_pipeline = Issue.create(name: "Dakota Access Pipeline", description: "DAPL plans are on Native holy land")

# call = Task.create(name: 'call your representative about Sessions', todo: 'phone call', resources: 'http://www.house.gov/htbin/findrep', issue_id: 1, creator_user_id: 1)
# sign = Task.create(name: 'faithless electors', todo: 'sign a petition', resources: 'https://www.change.org/p/electoral-college-electors-electoral-college-make-hillary-clinton-president-on-december-19', issue_id: 2, creator_user_id: 2)
# buy = Task.create(name: 'donate items to DAPL protestors', todo: 'go to wish list and buy them a thing', resources: 'http://sacredstonecamp.org/supply-list/', issue_id: 3, creator_user_id: 3)
# donate = Task.create(name: 'donate money to DAPL protestors', todo: 'contribute to linked gofundme', resources: 'https://www.gofundme.com/sacredstonecamp', issue_id: 3, creator_user_id: 3)
# #should tasks have a repeatable attribute? 

# user1 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
# user2 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
# user3 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password') 
# user4 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password')
# user5 = User.create(name: Faker::Name.name, emailaddress: Faker::Internet.email, password: 'password')  


# user_call1 = UserTask.create(user_id: user1.id, task_id: call.id, completed: true)
# user_call2 = UserTask.create(user_id: user4.id, task_id: call.id, completed: false)
# user_call3 = UserTask.create(user_id: user5.id, task_id: call.id, completed: false)

# user_sign1 = UserTask.create(user_id: user1.id, task_id: sign.id, completed: false)
# user_sign2 = UserTask.create(user_id: user2.id, task_id: sign.id, completed: true)
# user_sign3 = UserTask.create(user_id: user5.id, task_id: sign.id, completed: false)


# user_buy1 = UserTask.create(user_id: user1.id, task_id: buy.id, completed: false)
# user_buy2 = UserTask.create(user_id: user3.id, task_id: sign.id, completed: true)
# user_buy3 = UserTask.create(user_id: user4.id, task_id: sign.id, completed: false)

# user_donate1 = UserTask.create(user_id: user1.id, task_id: buy.id, completed: false)
# user_buy2 = UserTask.create(user_id: user3.id, task_id: buy.id, completed: true)
# user_buy3 = UserTask.create(user_id: user4.id, task_id: buy.id, completed: false)
