class CreateExams < ActiveRecord::Migration[5.0]
  def up
    create_table :exams do |t|
      t.integer :student_id
      t.boolean  :completed
      t.float :remaining_time
      t.float :original_time
      t.integer :number_of_questions

    end
  end

  def down
    drop_table :exams
  end
end
