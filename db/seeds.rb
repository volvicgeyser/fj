# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'jp_prefecture'

category_list = ["営業", "企画", "事務", "販売", "金融", "公務員", "SE・エンジニア", "機械・電気", "工場", "医療専門", "デザイン"]

term_list = ["長期", "短期"]
emp_pattern_list = ["人材派遣", "紹介予定派遣", "両方"]

200.times do |i|
  job = Job.create!(location:JpPrefecture::Prefecture.find((i % 47) + 1).name, category:category_list[(i % category_list.count)], term:term_list[(i % term_list.count)], office_location:JpPrefecture::Prefecture.find((i % 47) + 1).name, emp_pattern:emp_pattern_list[i % emp_pattern_list.count] )
end
