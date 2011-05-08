class Budgetitem < ActiveRecord::Base
  # vestal_versions
  versioned

  belongs_to :budget
  belongs_to :subledger

  attr_accessible :budget_id, :subledger_id, :budgeted_pct, :budgeted_amt, :committed_amt,
    :billed_amt, :paid_amt, :created_at, :updated_at, :created_by, :modified_by

  validates :budget_id, :presence => true, :numericality => true
  validates :subledger_id, :presence => true, :numericality => true
  validates :budgeted_pct, :numericality => true
  validates :budgeted_amt, :presence => true, :numericality => true
  validates :committed_amt, :presence => true, :numericality => true
  validates :billed_amt, :presence => true, :numericality => true
  validates :paid_amt, :presence => true, :numericality => true
  validates_uniqueness_of :budget_id, :subledger_id, :scope => :id

end
