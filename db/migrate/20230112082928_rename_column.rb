class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :amount, :icon
    change_column :categories, :icon, :string
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
