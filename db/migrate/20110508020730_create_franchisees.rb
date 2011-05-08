class CreateFranchisees < ActiveRecord::Migration
  def self.up
    create_table :franchisees do |t|
      t.string :name
      t.string :owner
      t.integer :tin
      t.string :street1
      t.string :street2
      t.integer :pincode
      t.string :city
      t.string :state
      t.string :country
      t.integer :landline
      t.integer :mobile
      t.string :facsimile
      t.string :email
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :franchisees
  end
end
