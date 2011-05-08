class ClustersStores < ActiveRecord::Migration
  def self.up
    create_table :clusters_stores, :id => false do |t|
      t.integer :cluster_id
      t.integer :store_id
    end
  end

  def self.down
    drop_table :clusters_stores
  end
end
