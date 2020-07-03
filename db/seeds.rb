require ‘open-uri’

puts “Destroying all users and their dilemmas”
Reply.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts “DB restored”

puts “creating new users”
avatar_user1 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593619302/Jolie_vencbv.png”)
user1 = User.create!(username: “Jolie”, email: “as.jolie3@gmail.com”, password: “123456”)
user1.avatar.attach(io: avatar_user1, filename: ‘jolie_avatar.jpg’, content_type: ‘image/png’)

avatar_user2 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593124267/qpid8g0gbstiukutvnmnad23j56w.jpg”)
user2 = User.create!(username: “Mariana”, email: “gatm870125@gmail.com”, password: “123456”)
user2.avatar.attach(io: avatar_user2, filename: ‘mariana_avatar.jpg’, content_type: ‘image/jpg’)

avatar_user3 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593619330/Jose_p2ifzv.jpg”)
user3 = User.create!(username: “Jose”, email: “josematias92@gmail.com”, password: “123456”)
user3.avatar.attach(io: avatar_user3, filename: ‘jose_avatar.jpg’, content_type: ‘image/jpg’)

avatar_user4 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593633971/iben.png”)
user4 = User.create!(username: “Iben”, email: “iben.fpolanco@gmail.com”, password: “leprekam935”)
user4.avatar.attach(io: avatar_user4, filename: “iben.png”, content_type: “image/png”)

avatar_user5 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593637722/Raj.jpg”)
user5 = User.create!(username: “Raj”, email: “raj@decide.com”, password: “123456”)
user5.avatar.attach(io: avatar_user5, filename: “raj.jpg”, content_type: “image/jpg”)

avatar_user6 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593638620/lety.jpg”)
user6 = User.create!(username: “Lety”, email: “lety@decide.com”, password: “123456”)
user6.avatar.attach(io: avatar_user6, filename: “lety.jpg”, content_type: “image/jpg”)

avatar_user7 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593638713/viola.jpg”)
user7 = User.create!(username: “ViolaViola”, email: “viola@decide.com”, password: “123456”)
user7.avatar.attach(io: avatar_user7, filename: “viola.jpg”, content_type: “image/jpg”)

avatar_user8 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593701340/joe.jpg”)
user8 = User.create!(username: “Joe”, email: “joe@decide.com”, password: “123456”)
user8.avatar.attach(io: avatar_user8, filename: “joe.jpg”, content_type: “image/jpg”)

avatar_user9 = URI.open(“https://res.cloudinary.com/dusgqtd1w/image/upload/v1593637972/juliana.jpg”)
user9 = User.create!(username: “Juliana”, email: “juliana@decide.com”, password: “123456”)
user9.avatar.attach(io: avatar_user9, filename: “juliana.jpg”, content_type: “image/jpgjpg”)

# => First user

puts “creating dilemmas for Jolie”
dilemma_1 = Dilemma.create!(question: “Prom dance outfit selection”,
                            category: 2,
                            tag: “clothing”,
                            user_id: user1.id)
dilemma_1_option_1 = Option.create!(description: “white smoking formal”,
                                    dilemma_id: dilemma_1.id)
dilemma_1_option_2 = Option.create!(description: “t-shirt with jeans casual”,
                                    dilemma_id: dilemma_1.id)
puts “Dilemma created”

dilemma_2 = Dilemma.create!(question: “Which beer tastes better?“,
                            category: 0,
                            tag: “social life”,
                            user_id: user1.id)
dilemma_2_option_1 = Option.create!(description: “Corona”,
                                    dilemma_id: dilemma_2.id)
dilemma_2_option_2 = Option.create!(description: “Modelo”,
                                    dilemma_id: dilemma_2.id)
dilemma_2.expired_at = dilemma_2.expired_at - 1.week
dilemma_2.save!
puts “Dilemma created”

dilemma_3 = Dilemma.create!(question: “Plans for the weekend”,
                              category: 1,
                              tag: “vacation”,
                              user_id: user1.id)
dilemma_3_option_1 = Option.create!(description: “Beach trip”,
                                    dilemma_id: dilemma_3.id)
dilemma_3_option_2 = Option.create!(description: “Mountain hike”,
                                    dilemma_id: dilemma_3.id)
puts “Dilemma created”

puts “Jolie’s dilemmas have been created”

#  => Second user

puts “creating dilemmas for Mariana”
dilemma_4 = Dilemma.create!(question: “Wanna watch a movie marathon”,
                            category: 0,
                            tag: “movies”,
                            user_id: user2.id)
dilemma_4_option_1 = Option.create!(description: “Shrek is love marathon”,
                                    dilemma_id: dilemma_4.id)
dilemma_4_option_2 = Option.create!(description: “Star Wars marathon”,
                                    dilemma_id: dilemma_4.id)
puts “Dilemma created”

dilemma_5 = Dilemma.create!(question: “Which faction should i choose in Fallout 4?“,
                            category: 1,
                            tag: “video games”,
                            user_id: user2.id)
dilemma_5_option_1 = Option.create!(description: “Institute”,
                                    dilemma_id: dilemma_5.id)
dilemma_5_option_2 = Option.create!(description: “BOS”,
                                    dilemma_id: dilemma_5.id)
puts “Dilemma created”

dilemma_6 = Dilemma.create!(question: “What console to buy”,
                              category: 2,
                              tag: “videogames”,
                              user_id: user2.id)
dilemma_6_option_1 = Option.create!(description: “Playstation 5”,
                                    dilemma_id: dilemma_6.id)
dilemma_6_option_2 = Option.create!(description: “Xbox S”,
                                    dilemma_id: dilemma_6.id)
puts “Dilemma created”

puts “Mariana’s dilemmas have been created”

# => Third user

puts “creating dilemmas for Jose”
dilemma_7 = Dilemma.create!(question: “What should i cook today?“,
                            category: 0,
                            tag: “cooking”,
                            user_id: user3.id)
dilemma_7_option_1 = Option.create!(description: “Spaguetti”,
                                    dilemma_id: dilemma_7.id)
dilemma_7_option_2 = Option.create!(description: “Lasagna”,
                                    dilemma_id: dilemma_7.id)
puts “Dilemma created”

dilemma_8 = Dilemma.create!(question: “Is it okay to give vegetables to a dog?“,
                            category: 1,
                            tag: “pet life”,
                            user_id: user3.id)
dilemma_8_option_1 = Option.create!(description: “Yes”,
                                    dilemma_id: dilemma_8.id)
dilemma_8_option_2 = Option.create!(description: “No”,
                                    dilemma_id: dilemma_8.id)
puts “Dilemma created”

dilemma_9 = Dilemma.create!(question: “Which show should i watch?“,
                              category: 0,
                              tag: “Netflix”,
                              user_id: user3.id)
dilemma_9_option_1 = Option.create!(description: “Elite”,
                                    dilemma_id: dilemma_9.id)
dilemma_9_option_2 = Option.create!(description: “13 Reasons why”,
                                    dilemma_id: dilemma_9.id)
puts “Dilemma created”

puts “Jose’s dilemmas have been created”

# => fourth user

puts “creating dilemmas for Iben”
dilemma_10 = Dilemma.create!(question: “trying to decide between to vehicles to buy?“,
                            category: 2,
                            tag: “vechicles”,
                            user_id: user4.id)
dilemma_10_option_1 = Option.create!(description: “Toyota corolla”,
                                    dilemma_id: dilemma_10.id)
dilemma_10_option_2 = Option.create!(description: “Nissan sunny”,
                                    dilemma_id: dilemma_10.id)
puts “Dilemma created”

dilemma_11 = Dilemma.create!(question: “Which career to follow?“,
                            category: 2,
                            tag: “college”,
                            user_id: user4.id)
dilemma_11_option_1 = Option.create!(description: “computer science”,
                                    dilemma_id: dilemma_11.id)
dilemma_11_option_2 = Option.create!(description: “business management”,
                                    dilemma_id: dilemma_11.id)
puts “Dilemma created”

dilemma_12 = Dilemma.create!(question: “A gift for christmas”,
                              category: 2,
                              tag: “holiday”,
                              user_id: user4.id)
dilemma_12_option_1 = Option.create!(description: “a computer”,
                                    dilemma_id: dilemma_12.id)
dilemma_12_option_2 = Option.create!(description: “a car”,
                                    dilemma_id: dilemma_12.id)
puts “Dilemma created”

puts “Iben’s dilemmas have been created”

# => fifth user

puts “creating dilemmas for Raj”
dilemma_13 = Dilemma.create!(question: “Should I get a new job?“,
                            category: 2,
                            tag: “job”,
                            user_id: user5.id)
dilemma_13_option_1 = Option.create!(description: “yes”,
                                    dilemma_id: dilemma_13.id)
dilemma_13_option_2 = Option.create!(description: “no”,
                                    dilemma_id: dilemma_13.id)
puts “Dilemma created”

dilemma_14 = Dilemma.create!(question: “new computer or reset the old one?“,
                            category: 1,
                            tag: “computers”,
                            user_id: user5.id)
dilemma_14_option_1 = Option.create!(description: “new computer”,
                                    dilemma_id: dilemma_14.id)
dilemma_14_option_2 = Option.create!(description: “reset old one”,
                                    dilemma_id: dilemma_14.id)
puts “Dilemma created”

dilemma_15 = Dilemma.create!(question: “Which color should I paint my house”,
                              category: 0,
                              tag: “painting”,
                              user_id: user5.id)
dilemma_15_option_1 = Option.create!(description: “white, i should follow my town’s convention”,
                                    dilemma_id: dilemma_15.id)
dilemma_15_option_2 = Option.create!(description: “green, my house would be an original place”,
                                    dilemma_id: dilemma_15.id)
puts “Dilemma created”

puts “Raj’s dilemmas have been created”

# => sixth user

puts “creating dilemmas for Lety”
dilemma_16 = Dilemma.create!(question: “Which color should I dye my red hair”,
                            category: 0,
                            tag: “dye”,
                            user_id: user6.id)
dilemma_16_option_1 = Option.create!(description: “Blonde”,
                                    dilemma_id: dilemma_16.id)
dilemma_16_option_2 = Option.create!(description: “Brown”,
                                    dilemma_id: dilemma_16.id)
puts “Dilemma created”

dilemma_17 = Dilemma.create!(question: “Which nail color”,
                            category: 0,
                            tag: “nails”,
                            user_id: user6.id)
dilemma_17_option_1 = Option.create!(description: “pastel blue”,
                                    dilemma_id: dilemma_17.id)
dilemma_17_option_2 = Option.create!(description: “mint”,
                                    dilemma_id: dilemma_17.id)
puts “Dilemma created”

dilemma_18 = Dilemma.create!(question: “Best way to cook a chicken”,
                              category: 1,
                              tag: “cooking”,
                              user_id: user6.id)
dilemma_18_option_1 = Option.create!(description: “Roasted”,
                                    dilemma_id: dilemma_18.id)
dilemma_18_option_2 = Option.create!(description: “Grilled”,
                                    dilemma_id: dilemma_18.id)
puts “Dilemma created”

puts “Lety’s dilemmas have been created”

# => seventh user

puts “creating dilemmas for Viola”
dilemma_19 = Dilemma.create!(question: “beach or pool this weekend?“,
                            category: 0,
                            tag: “vacation”,
                            user_id: user7.id)
dilemma_19_option_1 = Option.create!(description: “Beach”,
                                    dilemma_id: dilemma_19.id)
dilemma_19_option_2 = Option.create!(description: “Pool”,
                                    dilemma_id: dilemma_19.id)
puts “Dilemma created”

dilemma_20 = Dilemma.create!(question: “at which age should i get married”,
                            category: 2,
                            tag: “marritage”,
                            user_id: user7.id)
dilemma_20_option_1 = Option.create!(description: “20's”,
                                    dilemma_id: dilemma_20.id)
dilemma_20_option_2 = Option.create!(description: “30's”,
                                    dilemma_id: dilemma_20.id)
puts “Dilemma created”

dilemma_21 = Dilemma.create!(question: “Which dating app is better?“,
                              category: 0,
                              tag: “dating”,
                              user_id: user7.id)
dilemma_21_option_1 = Option.create!(description: “tinder”,
                                    dilemma_id: dilemma_21.id)
dilemma_21_option_2 = Option.create!(description: “hinge”,
                                    dilemma_id: dilemma_21.id)
puts “Dilemma created”

puts “Viola’s dilemmas have been created”

# => eight user

puts “creating dilemmas for Joe”
dilemma_22 = Dilemma.create!(question: “which wine for the summer?“,
                            category: 0,
                            tag: “wine”,
                            user_id: user8.id)
dilemma_22_option_1 = Option.create!(description: “Pinot Grigrio”,
                                    dilemma_id: dilemma_22.id)
dilemma_22_option_2 = Option.create!(description: “Rosé“,
                                    dilemma_id: dilemma_22.id)
puts “Dilemma created”

dilemma_23 = Dilemma.create!(question: “becoming a vegetarian”,
                            category: 2,
                            tag: “health”,
                            user_id: user8.id)
dilemma_23_option_1 = Option.create!(description: “yes”,
                                    dilemma_id: dilemma_23.id)
dilemma_23_option_2 = Option.create!(description: “no”,
                                    dilemma_id: dilemma_23.id)
puts “Dilemma created”

dilemma_24 = Dilemma.create!(question: “Rent or buy my next place?“,
                              category: 1,
                              tag: “place to live”,
                              user_id: user8.id)
dilemma_24_option_1 = Option.create!(description: “rent”,
                                    dilemma_id: dilemma_24.id)
dilemma_24_option_2 = Option.create!(description: “buy”,
                                    dilemma_id: dilemma_24.id)
puts “Dilemma created”

puts “Joe’s dilemmas have been created”

# => ninth user

puts “creating dilemmas for Juliana”
dilemma_25 = Dilemma.create!(question: “Should I homeschool my kids?“,
                            category: 2,
                            tag: “school”,
                            user_id: user9.id)
dilemma_25_option_1 = Option.create!(description: “homeschool”,
                                    dilemma_id: dilemma_25.id)
dilemma_25_option_2 = Option.create!(description: “public school”,
                                    dilemma_id: dilemma_25.id)
puts “Dilemma created”

dilemma_26 = Dilemma.create!(question: “which city is better for a mom’s trip?“,
                            category: 1,
                            tag: “holiday”,
                            user_id: user9.id)
dilemma_26_option_1 = Option.create!(description: “New York”,
                                    dilemma_id: dilemma_26.id)
dilemma_26_option_2 = Option.create!(description: “San Diego”,
                                    dilemma_id: dilemma_26.id)
puts “Dilemma created”

dilemma_27 = Dilemma.create!(question: “Should i forbid cellphones in my class”,
                              category: 1,
                              tag: “school”,
                              user_id: user9.id)
dilemma_27_option_1 = Option.create!(description: “Yes”,
                                    dilemma_id: dilemma_27.id)
dilemma_27_option_2 = Option.create!(description: “No”,
                                    dilemma_id: dilemma_27.id)
puts “Dilemma created”

puts “Juliana’s dilemmas have been created”
