class CreateExamsQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :exams_questions do |t|
      t.json :user_answers, default: {}
      t.boolean :marked
      t.integer :correct, default: -1
      t.integer :question_id
      t.integer :exam_id
    end
  end

  def down
    drop_table :exams_questions
  end
end
