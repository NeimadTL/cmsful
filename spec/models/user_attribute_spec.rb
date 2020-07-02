require 'rails_helper'

RSpec.describe UserAttribute, type: :model do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_presence_of :required }
  it { should validate_presence_of :type }

end
