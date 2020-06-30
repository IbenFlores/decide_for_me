require 'open-uri'

puts "Destroying all users and their dilemmas"
User.destroy_all

puts "DB restored"

puts "creating new users"
avatar_user1 = URI.open("https://gluc.mx/u/fotografias/m/2019/12/10/f638x638-20876_79043_5050.jpg")
user1 = User.create!(username: "Michael", email: "michael@decide.com", password: "123456")
user1.avatar.attach(io: avatar_user1, filename: 'michael.jpg', content_type: 'image/jpg')

avatar_user2 = URI.open("https://plantillasdememes.com/img/plantillas/shaquille-oneal-sorprendido-viajes-en-el-tiempo01563255669.jpg")
user2 = User.create!(username: "Jimmy", email: "jimmy@decide.com", password: "123456")
user2.avatar.attach(io: avatar_user2, filename: 'jimmy.jpg', content_type: 'image/jpg')

avatar_user3 = URI.open("https://pbs.twimg.com/media/ES3LuV6UcAMPlHp.jpg")
user3 = User.create!(username: "Sofia", email: "sofia@decide.com", password: "123456")
user3.avatar.attach(io: avatar_user3, filename: 'sofia.jpg', content_type: 'image/jpg')

# => First user

puts "creating dilemmas for Michael"
dilemma_1 = Dilemma.create!(question: "Prom dance outfit selection",
                            category: 2,
                            tag: "clothing",
                            user_id: user1.id)
dilemma_1_option_1 = Option.create!(description: "white smoking formal",
                                    dilemma_id: dilemma_1.id)
dilemma_1_option_2 = Option.create!(description: "t-shirt with jeans casual",
                                    dilemma_id: dilemma_1.id)
puts "Dilemma created"

dilemma_2 = Dilemma.create!(question: "Which beer tastes better?",
                            category: 0,
                            tag: "social life",
                            user_id: user1.id)
dilemma_2_option_1 = Option.create!(description: "Corona",
                                    dilemma_id: dilemma_2.id)
dilemma_2_option_2 = Option.create!(description: "Modelo",
                                    dilemma_id: dilemma_2.id)
puts "Dilemma created"

dilemma_3 = Dilemma.create!(question: "Plans for the weekend",
                              category: 1,
                              tag: "vacation",
                              user_id: user1.id)
dilemma_3_option_1 = Option.create!(description: "Beach trip",
                                    dilemma_id: dilemma_3.id)
dilemma_3_option_2 = Option.create!(description: "Mountain hike",
                                    dilemma_id: dilemma_3.id)
puts "Dilemma created"

puts "Michael's dilemmas have been created"

#  => Second user

puts "creating dilemmas for Jimmy"
dilemma_4 = Dilemma.create!(question: "Wanna watch a movie marathon",
                            category: 0,
                            tag: "movies",
                            user_id: user2.id)
dilemma_4_option_1 = Option.create!(description: "Shrek is love marathon",
                                    dilemma_id: dilemma_4.id)
dilemma_4_option_2 = Option.create!(description: "Star Wars marathon",
                                    dilemma_id: dilemma_4.id)
puts "Dilemma created"

dilemma_5 = Dilemma.create!(question: "Which faction should i choose in Fallout 4?",
                            category: 1,
                            tag: "video games",
                            user_id: user2.id)
dilemma_5_option_1 = Option.create!(description: "Institute",
                                    dilemma_id: dilemma_5.id)
dilemma_5_option_2 = Option.create!(description: "BOS",
                                    dilemma_id: dilemma_5.id)
puts "Dilemma created"

dilemma_6 = Dilemma.create!(question: "What console to buy",
                              category: 2,
                              tag: "videogames",
                              user_id: user2.id)
dilemma_6_option_1 = Option.create!(description: "Playstation 5",
                                    dilemma_id: dilemma_6.id)
dilemma_6_option_2 = Option.create!(description: "Xbox S",
                                    dilemma_id: dilemma_6.id)
puts "Dilemma created"

puts "Jimmy's dilemmas have been created"

# => Third user

puts "creating dilemmas for Sofia"
dilemma_7 = Dilemma.create!(question: "What should i cook today?",
                            category: 0,
                            tag: "cooking",
                            user_id: user3.id)
dilemma_7_option_1 = Option.create!(description: "Spaguetti",
                                    dilemma_id: dilemma_7.id)
dilemma_7_option_2 = Option.create!(description: "Lasagna",
                                    dilemma_id: dilemma_7.id)
puts "Dilemma created"

dilemma_8 = Dilemma.create!(question: "Is it okay to give vegetables to a dog?",
                            category: 1,
                            tag: "pet life",
                            user_id: user3.id)
dilemma_8_option_1 = Option.create!(description: "Yes",
                                    dilemma_id: dilemma_8.id)
dilemma_8_option_2 = Option.create!(description: "No",
                                    dilemma_id: dilemma_8.id)
puts "Dilemma created"

dilemma_9 = Dilemma.create!(question: "Which show should i watch?",
                              category: 0,
                              tag: "Netflix",
                              user_id: user3.id)
dilemma_9_option_1 = Option.create!(description: "Elite",
                                    dilemma_id: dilemma_9.id)
dilemma_9_option_2 = Option.create!(description: "13 Reasons why",
                                    dilemma_id: dilemma_9.id)
puts "Dilemma created"

puts "Sofia's dilemmas have been created"


