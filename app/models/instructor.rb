class Instructor < ApplicationRecord
  belongs_to :department
  has_many :teachs
  has_many :courses, :through => :teachs
end
