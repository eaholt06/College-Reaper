require 'rails_helper'

describe Course do
  it 'has a valid factory' do
    expect(build(:course)).to be_valid
  end

  it 'has and belongs to a :term' do
    should has_and_belongs_to :term
  end

  it 'has and belongs to a :course_group' do
    should have_and_belong_to :course_group
  end

  it 'has many :sections' do
    should have_many :sections
  end

  context 'attributes' do
    let :course do
      build :course
    end

    it 'includes a :instructional_unit attribute' do
      expect(course.attributes).to include('instructional_unit')
    end

    it 'includes a :course_number attribute' do
      expect(course.attributes).to include('course_number')
    end

    it 'includes a :name attribute' do
      expect(course.attributes).to include('name')
    end

    it 'includes a :credit_hours attribute' do
      expect(course.attributes).to include('credit_hours')
    end
  end

  context 'validates' do
    it 'the presence of :instructional_unit' do
      should validate_presence_of :instructional_unit
    end

    it 'the presence of :course_number' do
      should validate_numericality_of :course_number
    end

    it 'the presence of :name' do
      should validate_presence_of :name
    end

    it 'the presence of :credit_hours' do
      should validate_presence_of :credit_hours
    end

    it 'the numericality of : credit_hours' do
      should validate_numericality_of :credit_hours
    end
  end
end
