require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :admin }

  it { should have_many :user_attribute_values }
  it { should have_many :fields }

end
