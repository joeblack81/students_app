class CreateChaptersQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :chapters_questions do |t|
      t.integer :chapter_id
      t.integer :question_id
      t.integer :weight
    end
  end

  def down
    drop_table :chapters_questions
  end
end
