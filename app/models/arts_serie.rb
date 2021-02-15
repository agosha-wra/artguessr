# frozen_string_literal: true

class ArtsSerie < ApplicationRecord
  belongs_to :art
  belongs_to :serie
end
