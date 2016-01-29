# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Staff.create(name: '久保 大樹',name_kana: 'クボ ダイキ',sex: '男', age: 21,postal_code: '2520101',address: '神奈川県相模原市緑区',phone_num: '09098555294',home_num: '0427830761',mail:'pipion.214@gmail.com',role: 'helper',status: 1,)


User.create(:email => 'test@test.jp',:encrypted_password => 'test',:name =>'久保 大樹')