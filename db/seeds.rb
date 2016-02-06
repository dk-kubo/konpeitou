# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8
Staff.destroy_all
Staff.create!(id: 1,name: '久保 大樹',name_kana: 'クボ ダイキ',sex: 'male', age: 21,birth:Time.new(1994, 2, 14, 0, 0, 60, 0),postal_code: '2520101',address: '神奈川の山奥',phone_num: '09098555294',home_num: '0427830761',mail:'kubo@toyama.jp',role: 'helper',status: 1,)

Caremanager.destroy_all
Caremanager.create!(id: 1,name: '橋本 直也',name_kana: 'ハシモト ナオヤ',birth:Time.new(1993, 6, 3, 0, 0, 60, 0),sex: 'male', age: 22,postal_code: '0123456',address: '高幡不動らへん',phone_num: '09023301373',mail:'hashimoto@toyama.jp',company: '株式会社遠山ゼミ',status: 1,)
Caremanager.create!(id: 2,name: '小幡 航己',name_kana: 'オバタ コウキ',birth:Time.new(1993, 8, 10, 0, 0, 60, 0),sex: 'male', age: 22,postal_code: '8288284',address: '千葉の辺境の地',phone_num: '08033804467',mail:'obata@toyama.jp',company: '株式会社遠山ゼミ',status: 2,)


Customer.destroy_all
Customer.create!(id: 1,reception_day:Time.new(2016, 2, 6, 8, 30, 60, 0),birth:Time.new(1993, 12, 12, 0, 0, 60, 0),name: '石川 亮平',name_kana: 'イシカワ リョウヘイ',sex: 'male',postal_code: '9496609',address: '新潟の寒いところ',home_num:'0257723654',phone_num: '09038111107',mail:'ishikawa@toyama.jp',fax: '0257723654',history_of_consul:'家に引きこもりな為',demand:'よく話してください',caremanager_id:1,status: 1,)
Customer.create!(id: 2,reception_day:Time.new(2016, 2, 6, 17, 30, 60, 0),birth:Time.new(1993, 12, 12, 0, 0, 60, 0),name: '三舩 龍太郎',name_kana: 'ミフネ リュウタロウ',sex: 'male',postal_code: '9496609',address: '西国に移ったっぽい',home_num:'03123456',phone_num: '09038111107',mail:'mihune@toyama.jp',fax: '0257723654',history_of_consul:'体のいたるところが痛む',demand:'慎重に介護してください',caremanager_id:2,status: 1,)


User.destroy_all
User.create!(id: 1,email:'test@test.jp',password: 'testtest',name:'久保大樹')

CareRecord.destroy_all
c1 = CareRecord.create!(id: 1,day:Time.new(2016, 2, 1, 8, 30, 60, 0),arrive_time:Time.new(2016, 2, 1, 23, 30, 60, 0),leave_time:Time.new(2016, 2, 1, 8, 12, 60, 0),blood_pressure: '120/160',pulse:'80',temperature:'39.9',staff_id: 1,customer_id:1,status:1)
c1.update(created_at: Time.new(2016, 2, 1, 8, 00, 60, 0))