class CreateSuppliercontracts < ActiveRecord::Migration
  def self.up
    create_table :suppliercontracts do |t|
      t.integer :supplier_id
      t.date :effective_date
      t.float :discount
      t.integer :creditperiod
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliercontracts
  end
end
