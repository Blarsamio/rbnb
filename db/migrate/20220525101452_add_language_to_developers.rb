class AddLanguageToDevelopers < ActiveRecord::Migration[6.1]
  def change
    add_column :developers, :language, :string
  end
end
