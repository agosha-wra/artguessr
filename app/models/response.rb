class Response < ApplicationRecord
  belongs_to :user
  belongs_to :art
  belongs_to :arts_serie
end
