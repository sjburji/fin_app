class Ledger < ActiveRecord::Base
  # vestal_versions
  versioned

  CATEGORY = {
    :asset => 1,
    :liability => 2,
    :income => 3,
    :expense => 4
  }

  attr_accessible :category, :code, :name, :created_at, :updated_at, :created_by,
    :modified_by

  validates :category, :presence => true
  validates :code, :presence => true, :uniqueness => true
  validates :name, :presence => true

end
