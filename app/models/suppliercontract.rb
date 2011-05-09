class Suppliercontract < ActiveRecord::Base
  # vestal_versions
  versioned

  belongs_to :supplier

  attr_accessible :supplier_id, :effective_date, :discount, :creditperiod, :created_at,
    :updated_at, :created_by, :modified_by
  
  validates :supplier_id, :presence => true, :numericality => true
  validates :discount, :presence => true, :numericality => true
  validates :creditperiod, :presence => true, :numericality => true
  validates :effective_date, :presence => true, :numericality => true
  validates_uniqueness_of :supplier_id, :effective_date, :scope => :id
  
end
