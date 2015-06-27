class Request < ActiveRecord::Base
  validates :loan_number, :borrower_name, :reason, :presence => true
  validates :loan_number, :length => { :is => 11 }

  include PgSearch
  pg_search_scope :search,
                  against: [:loan_number, :borrower_name, :reason],
                  using: {tsearch: {prefix: true}}

  def self.column_search(query)
    if query.present?
      search(query)
    else
      all
    end
  end
end
