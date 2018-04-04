class CreateAnnouncements < ActiveRecord::Migration[5.2]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :content
      t.belongs_to :member, index: true

      t.timestamps
    end
  end
end
