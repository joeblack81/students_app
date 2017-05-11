class CreateSubjects < ActiveRecord::Migration[5.1]
  def up
    create_table :subjects do |t|
      t.string :name
      t.string :token
      t.string :mobile_version
      t.string :backend_version
      t.json :menu_items
      t.timestamps

    end
  end

  def down
    drop_table :subjects

  end
end
