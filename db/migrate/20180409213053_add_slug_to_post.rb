class AddSlugToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :slug, :string
  end
end
