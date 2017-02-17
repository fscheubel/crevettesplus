class Menu < ApplicationRecord
  after_save :keep_only_one_default, if: Proc.new { |menu| menu.is_default == true and menu.is_default_changed? }
  
  has_many :menu_items, dependent: :destroy
  
  validates :name, presence: true
  
  def self.default
    where(is_default: true).first
  end
  
  private
    def keep_only_one_default
      menus = Menu.where.not(id: self)
      menus.update_all(is_default: false)
    end
end
