class Material < ApplicationRecord
  has_many :quizzes;
  has_many :user_materials;
  has_many :users, through: :user_materials;
  belongs_to :course;
end
