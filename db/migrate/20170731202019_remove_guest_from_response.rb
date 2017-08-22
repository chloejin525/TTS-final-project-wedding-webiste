class RemoveGuestFromResponse < ActiveRecord::Migration[5.1]
  def change
  	remove_column :responses, :guest
  end
end
