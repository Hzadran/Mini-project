class Studentt < ApplicationRecord
  belongs_to :session
  has_many :stu_has_deps
  has_many :takes
  has_many :departments, :through => :stu_has_deps
  has_many :courses, :through => :takes
end
