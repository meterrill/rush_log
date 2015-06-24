require 'rails_helper'

describe Request do
  it { should validate_presence_of :loan_number }
  it { should validate_length_of :loan_number }
  it { should validate_presence_of :borrower_name }
  it { should validate_presence_of :reason }
end
