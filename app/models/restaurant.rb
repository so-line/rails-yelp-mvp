class Restaurant < ApplicationRecord

  validates :title, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian) }
end
