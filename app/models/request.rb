class Request < ActiveRecord::Base
  validates :loan_number, :presence => true
  validates :loan_number, :length => { :is => 11 }
end
