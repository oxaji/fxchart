class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :name
      t.text :text
      t.text :image
      t.integer :user_id
      t.integer :winlose
      t.integer :style 
      t.integer :timefoot
      t.integer :pair
      t.text :analyze
      t.text :profit
      t.timestamps
    end
  end
end
