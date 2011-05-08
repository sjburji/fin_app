class Budget < ActiveRecord::Base
  # vestal_versions
  versioned

  belongs_to :marketentity
  belongs_to :businessunit
  belongs_to :ledger
  
  attr_accessible :year, :month, :marketentity_id, :businessunit_id, :ledger_id,
    :budgeted_amt, :committed_amt, :billed_amt, :paid_amt,
    :created_at, :updated_at, :created_by, :modified_by

  validates :year, :presence => true
  validates :month, :presence => true
  validates :marketentity_id, :presence => true, :numericality => true
  validates :businessunit_id, :presence => true, :numericality => true
  validates :ledger_id, :presence => true, :numericality => true
  validates :budgeted_amt, :presence => true, :numericality => true
  validates :committed_amt, :presence => true, :numericality => true
  validates :billed_amt, :presence => true, :numericality => true
  validates :paid_amt, :presence => true, :numericality => true
  validates_uniqueness_of :year, :month, :marketentity_id, :businessunit_id,
    :ledger_id, :scope => :id

end
