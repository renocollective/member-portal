class AddTitleToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :title, :string
  end
end
