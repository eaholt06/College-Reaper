class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      # General section info
      t.string :room , null: false, default: ''
      t.time :start_time, null: false, default:  Time.at(36000)
      t.time :end_time, null: false, default: Time.at(39600)
      t.string :rpt_pattern, null: false, default: ''

      # Section availability info
      t.boolean :open, null: false, default: false
      t.integer :course_seats, null: false, default: ''
      t.integer :wait_seats, null: false, default: ''
      t.integer :seat_max, null: false, default: ''
      t.integer :wait_max, null: false, default: ''

      # Metadata field
      t.timestamps
    end
  end
end
