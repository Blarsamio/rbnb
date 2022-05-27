class AddManyToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :first_name, :string
    add_column :developers, :last_name, :string
    add_column :developers, :address, :string
    add_column :developers, :image, :string
  end
end
