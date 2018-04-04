class RemoveMemberAssociationFromAnnouncements < ActiveRecord::Migration[5.1]
  def change
    change_table :announcements do |t|
      t.remove :member_id
    end
  end
end
