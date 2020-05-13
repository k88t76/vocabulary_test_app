class Word < ApplicationRecord
  validates :word,    presence: true, uniqueness: true
  validates :meaning, presence: true
end
