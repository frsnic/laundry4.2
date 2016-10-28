# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Store.create(name: "測試洗衣店", phone: "04-25123456", address: "臺北市-台灣總統府", email: "test.test.com", start_time: 70000, end_time: 220000)

StoreUser.create(store_id: 1, user_id: 1)
