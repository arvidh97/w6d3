# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork
        
    validates :username, presence: true, uniqueness: true
end
