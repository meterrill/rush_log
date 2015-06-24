require 'rails_helper'

describe Request do
  it { should validate_presence_of :loan_number }
end
