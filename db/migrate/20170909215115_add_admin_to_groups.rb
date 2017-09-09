class AddAdminToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :img_top, :string
    add_column :groups, :img_sub_1, :string
    add_column :groups, :img_sub_2, :string
  end
end
