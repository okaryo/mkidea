class Seed < ApplicationRecord
  validates :idea_seed, {presence: true, uniqueness: true, length: {maximum: 10}}
end
