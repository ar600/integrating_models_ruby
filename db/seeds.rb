# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails g model User name:string email:string age:integer
User.destroy_all
User.create(name:"Ali Rashidian", email:"a@a.com", age:33)
User.create(name:"sarah Rashidian", email:"s@s.com", age:22)
User.create(name:"Jessica Rashidian", email:"jj.com", age:44)
User.create(name:"David Rashidian", email:"d@d.com", age:55)
