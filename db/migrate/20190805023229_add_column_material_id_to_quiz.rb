class AddColumnMaterialIdToQuiz < ActiveRecord::Migration[5.0]
  def change
    add_column :quizzes, :material_id, :integer
  end
end
