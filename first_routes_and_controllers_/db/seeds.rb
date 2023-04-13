# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

ArtworkShare.destroy_all
Artwork.destroy_all 
User.destroy_all 

ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")
ActiveRecord::Base.connection.execute("ALTER SEQUENCE artworks_id_seq RESTART WITH 1")

10.times do |n|
    User.create!(
        :username => Faker::Internet.user_name
    )
end

10.times do |i|
    Artwork.create!(
      :title => "Artwork #{rand(1..100)}",
      :artist_id => rand(1..10),
      :image_url => Faker::Internet.url()
    )
  end

10.times do 
    ArtworkShare.create!(
        :artwork_id => rand(1..10),
        :viewer_id => rand(1..10)
    )
end



