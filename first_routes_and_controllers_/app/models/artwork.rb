class Artwork < ApplicationRecord
    belongs_to :artist, 
        foreign_key: :artist_id,
        class_name: :User

    validates :title, uniqueness: {scope: :artist_id, message: "artist already has #{:title}"} 
end
