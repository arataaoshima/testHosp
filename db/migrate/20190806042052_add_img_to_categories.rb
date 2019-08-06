class AddImgToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :imgage_url, :string
  end
end
