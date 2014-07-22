class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      # Instructional unit
      t.text :instructional_unit, null :false, default: ''

      # Course identification number
      t.text :course_number, null :false, default: ''

      # Descriptive name for course
      t.text :name, null :false, default: ''

      # Number of credit hours counted toward degree
      t.integer :credit_hours, null :false, default: 0

      # Metadata field
      t.timestamps
    end
  end
end
