# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

me = User.new(first_name: "Chris", last_name: "Richards", email: "usa.chrisrichards@gmail.com", password: "password", location: "Chicago, IL", profile_photo: "https://lh3.googleusercontent.com/a-/AAuE7mCnATr3wgxaeNx751H9bHb_9TqpkkyaRcyx5CmnWA=s96-cc")
me.password_confirmation = "password"
me.save
Board.create(title: "Sleep", user_id: 1)

Goal.create(title: 'I will have a consistent and healthy sleep routine', content: "I will accomplish this goal by: getting to bed at 9pm every night, avoiding screens after 8:30pm, limiting caffeine intake to only 1 serving(<100mg) a day in the morning time.", complete: false, board_id: 1)

Image.create(title: 'bed', url: 'http://www.healthandbenefit.com/wp-content/uploads/2018/03/Get-good-sleep1.png', board_id: 1)

