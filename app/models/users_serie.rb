# frozen_string_literal: true

class UsersSerie < ApplicationRecord
  belongs_to :user
  belongs_to :serie
end
