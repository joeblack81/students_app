class CreateChapters < ActiveRecord::Migration[5.1]
  def up
    create_table :chapters do |t|
      t.integer :subject_id
      t.integer :weight
      t.string :name
      t.string :icon
      t.timestamps
    end
  end

  def down
    drob_table :chapters
  end
end
