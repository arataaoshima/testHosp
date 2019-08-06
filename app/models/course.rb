class Course < ApplicationRecord

  has_many :materials;
  belongs_to :category;
end
