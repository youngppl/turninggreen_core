class Reflection < ApplicationRecord
  belongs_to :challenge
  has_one_attached :photo
end
