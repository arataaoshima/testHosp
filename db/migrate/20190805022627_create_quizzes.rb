class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :content
      t.integer :answer

      t.timestamps
    end
  end
end
