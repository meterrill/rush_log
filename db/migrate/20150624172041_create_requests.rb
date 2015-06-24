class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.column :requested_by, :string
      t.column :branch_number, :integer
      t.column :loan_number, :bigint
      t.column :borrower_name, :string
      t.column :reason, :text

      t.timestamps
    end
  end
end
