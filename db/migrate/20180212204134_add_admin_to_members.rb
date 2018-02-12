class AddAdminToMembers < ActiveRecord::Migration[5.1]
  def change
    if column_exists? :members, :admin
                remove_column :members, :admin, :boolean, default: false
    end
    
    add_column :members, :admin, :boolean, default: false
  end
end
