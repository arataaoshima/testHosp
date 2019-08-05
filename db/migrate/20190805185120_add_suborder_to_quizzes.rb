class AddSuborderToQuizzes < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzes, :suborder, :integer
  end
end
