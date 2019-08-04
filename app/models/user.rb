class User < ApplicationRecord

  has_many :user_materials;
  has_many :materials, through: :user_materials;
end
