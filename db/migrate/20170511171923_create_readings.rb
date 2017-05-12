class CreateReadings < ActiveRecord::Migration[5.0]
  def up
    create_table :readings do |t|
      t.integer :reading_type_id
      t.string :header
      t.text :body
      t.integer :subject_id
      t.timestamps
    end
  end

  def down
    drop_table :readings

  end
end
