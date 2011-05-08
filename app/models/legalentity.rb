class Legalentity < ActiveRecord::Base
  # vestal_versions
  versioned
  
  belongs_to :office

  attr_accessible :name, :tin, :office_id, :created_at, :updated_at, :created_by,
    :modified_by

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :tin, :presence => true, :numericality => { :greater_than => 0 },
    :length => { :maximum => 20 }
  validates :office_id, :presence => true, :numericality => true

end
