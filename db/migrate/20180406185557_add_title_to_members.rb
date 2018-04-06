class AddTitleToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :title, :string
  end
end
