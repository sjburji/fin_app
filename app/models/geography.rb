class Geography < ActiveRecord::Base
  # vestal_versions
  versioned
  
  attr_accessible :name, :category, :created_at, :updated_at, :created_by,
    :modified_by

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :category, :presence => true
end
