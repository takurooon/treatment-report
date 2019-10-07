# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/seeds/prefecture.csv', headers: true) do |row|
  Prefecture.create!(
    name: row['name'],
    region_id: row['region_id'],
    region_name: row['region_name']
  )
end

CSV.foreach('db/seeds/city.csv', headers: true) do |row|
  City.create!(
    name: row['name'],
    city_code: row['city_code'],
    prefecture_id: row['prefecture_id']
  )
end

CSV.foreach('db/seeds/ward.csv', headers: true) do |row|
  Ward.create!(
    name: row['name'],
    ward_code: row['ward_code'],
    city_id: row['city_id']
  )
end