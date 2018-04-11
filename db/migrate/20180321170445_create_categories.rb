class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    remove_columns :name
  end
end
