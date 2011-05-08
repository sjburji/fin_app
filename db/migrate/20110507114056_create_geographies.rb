class CreateGeographies < ActiveRecord::Migration
  def self.up
    create_table :geographies do |t|
      t.string :name
      t.string :category
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :geographies
  end
end
