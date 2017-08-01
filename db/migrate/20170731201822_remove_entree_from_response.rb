class RemoveEntreeFromResponse < ActiveRecord::Migration[5.1]
  def change
  	remove_column :responses, :entree
  end
end
