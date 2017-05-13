class CreateDevicesInfos < ActiveRecord::Migration[5.0]
  def up
    create_table :devices_infos do |t|
      t.string :udid
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :devices_infos
  end
end
