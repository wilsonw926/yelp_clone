class RemoveAdminFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :admin, :boolean
  end
end
