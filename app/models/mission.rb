class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  validates :name, presence: true
  validates :scientist, uniqueness: {scope: :planet}
  validates :planet, presence: true
end
