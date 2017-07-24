class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.string :attendance
      t.integer :number
      t.integer :entree
      t.text :message
      t.references :user, foreign_key: true
      t.text :guest

      t.timestamps
    end
  end
end
