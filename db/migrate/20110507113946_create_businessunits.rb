class CreateBusinessunits < ActiveRecord::Migration
  def self.up
    create_table :businessunits do |t|
      t.string :name
      t.integer :marketentity_id
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :businessunits
  end
end
