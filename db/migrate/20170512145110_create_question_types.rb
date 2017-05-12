class CreateQuestionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :question_types do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :question_types
  end
end
