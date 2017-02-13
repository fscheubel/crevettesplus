class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.time :active_start
      t.time :active_end
      t.boolean :is_default, default: false

      t.timestamps null: false
    end
  end
end
