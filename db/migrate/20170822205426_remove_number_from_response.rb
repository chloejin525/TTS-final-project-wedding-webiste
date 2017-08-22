class RemoveNumberFromResponse < ActiveRecord::Migration[5.1]
  def change
    remove_column :responses, :number, :integer
  end
end
