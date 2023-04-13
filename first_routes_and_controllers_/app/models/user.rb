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

    has_many :viewers,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    has_many :shared_artworks,
        through: :viewers,
        source: :artwork
        
    validates :username, presence: true, uniqueness: true
end
