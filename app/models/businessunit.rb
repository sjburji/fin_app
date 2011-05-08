class Businessunit < ActiveRecord::Base
  # vestal_versions
  versioned
  
  belongs_to :marketentity

  attr_accessible :name, :marketentity_id, :created_at, :updated_at, :created_by,
    :modified_by

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :marketentity_id, :presence => true, :numericality => true
end
