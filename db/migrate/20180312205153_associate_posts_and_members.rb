class AssociatePostsAndMembers < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.belongs_to :member, index: true
    end
  end
end
