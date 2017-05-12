class CreateReadingTypes < ActiveRecord::Migration[5.1]
  def up
    create_table :reading_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :reading_types
  end
end
