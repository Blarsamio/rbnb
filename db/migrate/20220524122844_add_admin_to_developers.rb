class AddAdminToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :admin, :boolean
  end
end
