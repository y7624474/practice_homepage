class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :describe
      t.string :address
      t.string :beds
      t.string :rooms

      t.timestamps null: false
    end
  end
end
