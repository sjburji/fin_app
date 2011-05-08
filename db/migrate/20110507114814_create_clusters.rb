class CreateClusters < ActiveRecord::Migration
  def self.up
    create_table :clusters do |t|
      t.string :name
      t.integer :geography_id
      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :clusters
  end
end
