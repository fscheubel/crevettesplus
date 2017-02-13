class MenuItem < ApplicationRecord
  belongs_to :menu
  
  validates :menu, presence: true
  validates :name, presence: true, uniqueness: { scope: :menu, case_sensitive: false }
end
