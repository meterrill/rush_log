class Request < ActiveRecord::Base
  validates :loan_number, :presence => true
end
