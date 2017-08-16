class AddAvatarToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :avatar, :string
  end
end
