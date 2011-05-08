class Cluster < ActiveRecord::Base
  # vestal_versions
  versioned
  
  has_and_belongs_to_many :stores
  belongs_to :geography

  attr_accessible :name, :geography_id, :created_at, :updated_at, :created_by,
    :modified_by, :store_ids

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :geography_id, :presence => true, :numericality => true
end
