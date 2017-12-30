class AddPaperclipToRestaurants < ActiveRecord::Migration[5.1]
  def change
  end
  add_attachment :restaurants, :image
end
