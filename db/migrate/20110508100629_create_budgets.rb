class CreateBudgets < ActiveRecord::Migration
  def self.up
    create_table :budgets do |t|
      t.integer :year
      t.string :month
      t.integer :marketentity_id
      t.integer :businessunit_id
      t.integer :ledger_id
      t.float :budgeted_amt
      t.float :committed_amt
      t.float :billed_amt
      t.float :paid_amt
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :budgets
  end
end
