class Participant < ApplicationRecord
  belongs_to :game
  belongs_to :receiver, class_name: "Participant"
end
