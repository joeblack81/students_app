class CreateBookmarks < ActiveRecord::Migration[5.0]
  def up
    create_table :bookmarks do |t|
      t.integer :bookmarkable_id
      t.integer  :bookmarkable_type
      t.integer :student_id
      t.timestamps
    end
  end

  def down
    drop_table :bookmarks
  end
end
