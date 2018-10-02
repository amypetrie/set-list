class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t| #create_table from Active Record
      t.text :title #attributes and what form we want them to be in
      t.integer :length
      t.integer :play_count

      t.timestamps null: false
    end
  end
end
