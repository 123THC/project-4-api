# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'Ben Currie', email: 'Ben@currie.co.uk', password: 'password', address_line1: '1 South Norwood Hill', address_line2: 'South Norwood', address_line3: 'London', address_line4: 'SE25 6BY', profile_picture: 'nothing yet')
User.create!(username: 'Beth Talbot', email: 'Beth@talbot.co.uk', password: 'password', address_line1: '1 South Norwood Hill', address_line2: 'South Norwood', address_line3: 'London', address_line4: 'SE25 6BY', profile_picture: 'nothing yet')

Job.create!(title: 'Changing tyre on my car', description: 'I need the tyres on my car changed over but Im too old and frail', hourly_rate: 10, date: '2017-06-15', address_line1: '1 South Norwood Hill', address_line2: 'South Norwood', address_line3: 'London', address_line4: 'SE25 6BY', user_id: 1)

Job.create!(title: 'Putting up shelf in Kitchen', description: 'I need someone to put up a shelf in my kitchen', hourly_rate: 12, date: '2017-04-21', address_line1: '1 South Norwood Hill', address_line2: 'South Norwood', address_line3: 'London', address_line4: 'SE25 6BY', user_id: 2, chosen_applicant_id: 1)

Job.create!(title: 'Dismantling my bed', description: 'I need someone to dismantle my bed and put up the new one', hourly_rate: 8, date: '2017-05-01', address_line1: '1 South Norwood Hill', address_line2: 'South Norwood', address_line3: 'London', address_line4: 'SE25 6BY', user_id: 2, chosen_applicant_id: 1)
