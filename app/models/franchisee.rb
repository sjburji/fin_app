class Franchisee < ActiveRecord::Base
  # vestal_versions
  versioned
  
  attr_accessible :name, :street1, :street2, :pincode, :city, :state, :country,
    :landline, :mobile, :facsimile, :email, :owner, :tin, :created_at, :updated_at, :created_by,
    :modified_by

  validates :name, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :street1, :presence => true, :length => { :minimum => 2, :maximum => 100 }
  validates :pincode, :presence => true, :length => { :minimum => 2, :maximum => 10 },
    :numericality => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true
  validates :landline, :numericality => true
  validates :mobile, :numericality => true
  validates :tin, :numericality => true
  validates :owner, :presence => true
  validates :email, :email => true
  validate :atleast_one_phone_number_required

  def atleast_one_phone_number_required
    if landline.blank? && mobile.blank?
      errors.add(:mphone, "is required")
    end
    unless landline.blank?
      begin
        errors.add(:landline, "is more than 10 digits") if landline.to_s.length > 10
        errors.add(:landline, "is less than 8 digits") if landline.to_s.length < 8
      end
    end
    unless mobile.blank?
      begin
        errors.add(:mobile, "should be 10 digits") if mobile.to_s.length != 10
      end
    end
  end

end
