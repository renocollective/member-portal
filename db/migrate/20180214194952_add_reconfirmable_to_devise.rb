class AddReconfirmableToDevise < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :unconfirmed_email, :string # Only if using reconfirmable
  end

  def down
    remove_columns :members, :unconfirmed_email # Only if using reconfirmable
  end
end
