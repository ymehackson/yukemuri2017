class CreateGroupCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :group_categories do |t|
      t.string :group_id
      t.string :master_id
      t.string :score

      t.timestamps
    end
  end
end
