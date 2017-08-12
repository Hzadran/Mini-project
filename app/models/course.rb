class Course < ApplicationRecord
has_many :takes
has_many :teachs
has_many :instructors, :through => :teachs
 has_many :studentts, :through => :takes
end
