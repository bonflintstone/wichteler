class Game < ApplicationRecord
  has_many :participants, dependent: :destroy
end
