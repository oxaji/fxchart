class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.string :name
      t.text :text
      t.text :image
      t.integer :user_id
      t.timestamps
    end
  end
end
