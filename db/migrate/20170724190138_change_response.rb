class ChangeResponse < ActiveRecord::Migration[5.1]
  def change
  	change_column :responses, :entree, :string
  end
end
