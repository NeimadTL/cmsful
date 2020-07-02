require 'rails_helper'

RSpec.describe UserAttribute, type: :model do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :required }
  it { should validate_presence_of :type }

  it { should have_many :user_attribute_values }
  it { should have_many :users }

end
