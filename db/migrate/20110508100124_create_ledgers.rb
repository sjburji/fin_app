class CreateLedgers < ActiveRecord::Migration
  def self.up
    create_table :ledgers do |t|
      t.string :category
      t.string :code
      t.string :name
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :ledgers
  end
end
