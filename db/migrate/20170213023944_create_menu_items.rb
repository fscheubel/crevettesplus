class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.belongs_to :menu, foreign_key: true, index: true
      t.string :name, index: true
      t.string :description
      t.decimal :price, precision: 20, scale: 10

      t.timestamps null: false
    end
  end
end
