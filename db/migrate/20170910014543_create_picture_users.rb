class CreatePictureUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_users do |t|
      t.references :user
      t.references :picture
      t.timestamps
    end
  end
end
