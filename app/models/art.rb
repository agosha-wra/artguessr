class Art < ApplicationRecord
    has_many :arts_series
    has_many :responses
    has_one_attached :art_image
    has_one_attached :location_image
end
