class RemoveColumnsFromMaterials < ActiveRecord::Migration[5.0]
  def change
    remove_column :materials, :material, :string
    remove_column :materials, :type, :string
  end
end
