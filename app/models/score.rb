class Score < ApplicationRecord
  validates :name, length: {maximum: 10}
end
