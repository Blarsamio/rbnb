class AddDefaultRatingToDevelopers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :developers, :rating, 5
  end
end
