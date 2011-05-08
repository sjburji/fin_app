class Subledger < ActiveRecord::Base
  # vestal_versions
  versioned

  belongs_to :ledger

  attr_accessible :ledger_id, :code, :name, :created_at, :updated_at, :created_by,
    :modified_by

  validates :ledger_id, :presence => true
  validates :code, :presence => true, :uniqueness => true
  validates :name, :presence => true
end
