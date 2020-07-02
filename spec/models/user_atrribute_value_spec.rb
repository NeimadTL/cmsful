require 'rails_helper'

RSpec.describe UserAtrributeValue, type: :model do

  it { should validate_presence_of :value }

end
