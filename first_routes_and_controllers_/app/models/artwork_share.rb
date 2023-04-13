class ArtworkShare < ApplicationRecord
    validates :viewer_id, uniqueness: {scope: :artwork_id, message: "artist already has viewed this"} 

    belongs_to :artwork,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to :viewer,
        foreign_key: :viewer_id,
        class_name: :User

end
