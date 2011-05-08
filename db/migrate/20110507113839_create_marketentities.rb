class CreateMarketentities < ActiveRecord::Migration
  def self.up
    create_table :marketentities do |t|
      t.string :name
      t.integer :legalentity_id
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :marketentities
  end
end
