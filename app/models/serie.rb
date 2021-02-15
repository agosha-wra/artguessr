# frozen_string_literal: true

class Serie < ApplicationRecord
  has_many :users_series
  has_many :arts_series
  has_one_attached :image
end
