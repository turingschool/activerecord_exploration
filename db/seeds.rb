require './app/models/horse.rb'
require './app/models/breed.rb'
require './app/models/jockey.rb'

Breed.destroy_all
Horse.destroy_all
Jockey.destroy_all

breeds  = ["Palomino", "Clydesdale", "Percheron", "Mustang", "Trakehner"]
jockeys = ["Jim", "Joe", "Jessie", "Janet", "Jessica"]
horses  = [
            {name: "Penelope", age: 29, total_winnings: 34000, breed_id: 1, jockey_id: 1},
            {name: "Penelope", age: 39, total_winnings: 500, breed_id: 1, jockey_id: 2},
            {name: "Paulo", age: 45, total_winnings: 45000, breed_id: 2, jockey_id: 3},
            {name: "Pepe", age: 39, total_winnings: 1000000, breed_id: 2, jockey_id: 4},
            {name: "Pete", age: 55, total_winnings: 4000, breed_id: 3, jockey_id: 5},
            {name: "Paige", age: 20, total_winnings: 78000, breed_id: 3, jockey_id: 1},
            {name: "Peyton", age: 95, total_winnings: 898344, breed_id: 4, jockey_id: 2},
            {name: "Patricia", age: 49, total_winnings: 78000, breed_id: 4, jockey_id: 3},
            {name: "Patricia", age: 49, total_winnings: 8978000, breed_id: 5, jockey_id: 4},
            {name: "Picasso", age: 15, total_winnings: 78000, breed_id: 5, jockey_id: 5}
          ]

breeds.each do |breed|
  puts "Creating breed: #{breed}"
  Breed.create!(name: breed)
end

jockeys.each do |jockey|
  puts "Creating jockey: #{jockey}"
  Jockey.create!(name: jockey)
end

horses.each do |horse|
  puts "Creating horse: #{horse[:name]}"
  Horse.create!(horse)
end
