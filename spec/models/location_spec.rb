require 'rails_helper'

describe Location do
  it 'has a valid factory' do
    expect(build(:location)).to be_valid
  end

  it 'has many sections' do
    should have_many :sections
  end

  context 'attributes' do
    let :location do
      build :location
    end
    
    it 'has a :name attribute' do
      expect(location.attributes).to include('name')
    end

    it 'has a :street1 attribute' do
      expect(location.attributes).to include('street1')
    end

    it 'has a :street2 attribute' do
      expect(location.attributes).to include('street2')
    end

    it 'has a :city attribute' do
      expect(location.attributes).to include('city')
    end

    it 'has a :state attribute' do
      expect(location.attributes).to include('state')
    end

    it 'has a :zip attribute' do
      expect(location.attributes).to include('zip')
    end
  end

  context 'validates' do
    it 'the presence of :name' do
      should validate_presence_of :name
    end

    it 'validates uniqueness of :name' do
      should validate_uniqueness_of :name
    end

    it 'validates presence of :street1' do
      should validate_presence_of :street1
    end

    it 'the presence of :city' do
      should validate_presence_of :city
    end

    it 'the presence of :state' do
      should validate_presence_of :state
    end

    it 'the presence of :zip' do
      should validate_presence_of :zip
    end
  end
end