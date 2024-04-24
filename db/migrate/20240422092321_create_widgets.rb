class CreateWidgets < ActiveRecord::Migration[7.1]
  def change
    create_table :widgets do |t|
      t.string :name
      t.integer :price
      t.boolean :bought
      t.string :category

      t.timestamps
    end
  end
end
