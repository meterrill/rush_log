class Request < ActiveRecord::Base
  validates :loan_number, :borrower_name, :reason, :presence => true
  validates :loan_number, :length => { :is => 11 }
end
