class Marketentity < ActiveRecord::Base
  # vestal_versions
  versioned
  
  belongs_to :legalentity

  attr_accessible :name, :legalentity_id, :created_at, :updated_at, :created_by,
    :modified_by

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :legalentity_id, :presence => true, :numericality => true
end
