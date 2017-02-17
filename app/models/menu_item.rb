class MenuItem < ApplicationRecord
  belongs_to :menu
  
  validates :menu, presence: true
  validates :name, presence: true, uniqueness: { scope: :menu, case_sensitive: false }
  validates :price, presence: true, numericality: { gt: 0 }
end
