require 'rails_helper'

RSpec.describe UserAtrributeValue, type: :model do

  it { should validate_presence_of :value }
  it { should validate_presence_of :user_attribute }
  it { should validate_presence_of :user }

  it { should belong_to :user_attribute }
  it { should belong_to :user }



end
