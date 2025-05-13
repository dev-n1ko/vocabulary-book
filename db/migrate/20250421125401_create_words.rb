class CreateWords < ActiveRecord::Migration[7.1]
  def change
    create_table :words do |t|
      t.string :name
      t.string :explanation
      t.integer :count

      t.timestamps
    end
  end
end
