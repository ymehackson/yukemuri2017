class CreatePictureUesrs < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_uesrs do |t|
      t.references :user
      t.references :picture
      t.timestamps
    end
  end
end
