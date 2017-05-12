class CreateQuestions < ActiveRecord::Migration[5.1]
  def up
    create_table :questions do |t|
      t.text :header
      t.json :possible_answers
      t.json :correct_answer
      t.json :explanation
      t.integer :question_type_id
      t.timestamps

    end
  end

  def down
    drop_table :questions
  end
end
