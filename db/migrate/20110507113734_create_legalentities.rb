class CreateLegalentities < ActiveRecord::Migration
  def self.up
    create_table :legalentities do |t|
      t.string :name
      t.integer :tin
      t.integer :office_id
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :legalentities
  end
end
