class AddQuizToMaterial < ActiveRecord::Migration[5.0]
  def change
    add_column :materials, :quiz_type, :string
  end
end
