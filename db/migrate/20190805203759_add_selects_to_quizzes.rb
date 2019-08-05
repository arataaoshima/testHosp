class AddSelectsToQuizzes < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzes, :select1, :text
    add_column :quizzes, :select2, :text
    add_column :quizzes, :select3, :text
    add_column :quizzes, :answer_text, :text
  end
end
