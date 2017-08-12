class Department < ApplicationRecord
has_many :stu_has_deps
has_many :studentt, :through => :stu_has_deps
has_many :instructors
end
