# The +Course+ class provides information about an individual course. 
# Each course is related to a Course Group, Section and Term. After 
# a user enters their preferences, courses will be evaluated and eliminated.
# Course information will also be displayed to the user once a schedule is
# determined.
#
# Attributes are stored as followed:
#
#   * +:course_number+ is the four digit course number for a specific course
#   * +:instructional_unit+ represents the acronym that procedes a course number
#   * +:name+ provides a descriptive title for the course
#   * +:credit_hours+ provides the number of credit hours counted toward degree
#
class Course < ActiveRecord::Base
  validates :course_number, presence: true, numericality: true
  validates :instructional_unit, presence: true
  validates :name, presence: true
  validates :credit_hours, presence: true

  has_many :sections
  has_many :course_groups
  has_many :terms
end
