class Album < ApplicationRecord

    

    belongs_to :album,
    foreign_key: :band_id,
    class_name: :Band
end
