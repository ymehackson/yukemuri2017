class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :url
      t.integer :value
      t.integer :real_type
      t.timestamps
    end
  end
end
