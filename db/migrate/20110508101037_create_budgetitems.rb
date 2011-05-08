class CreateBudgetitems < ActiveRecord::Migration
  def self.up
    create_table :budgetitems do |t|
      t.integer :budget_id
      t.integer :subledger_id
      t.float :budgeted_pct
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
    drop_table :budgetitems
  end
end
