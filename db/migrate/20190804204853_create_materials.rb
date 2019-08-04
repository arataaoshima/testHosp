class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :course_id
      t.string :material
      t.string :type
      t.text :link
      t.boolean :final_exam

      t.timestamps
    end
  end
end
