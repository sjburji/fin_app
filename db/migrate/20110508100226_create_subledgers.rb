class CreateSubledgers < ActiveRecord::Migration
  def self.up
    create_table :subledgers do |t|
      t.string :name
      t.string :code
      t.integer :ledger_id
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :subledgers
  end
end
