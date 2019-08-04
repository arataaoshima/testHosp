class CreateUserMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :user_materials do |t|
      t.references :user, index:true, foreign_key: true
      t.references :material, index:true, foreign_key: true

      t.timestamps
    end
  end
end
