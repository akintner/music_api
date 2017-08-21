class Albums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.date :year

      t.timestamps null:false
    end
  end
end
