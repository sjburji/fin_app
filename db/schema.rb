# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110508101506) do


  create_table "budgetitems", :force => true do |t|
    t.integer  "budget_id",     :precision => 38, :scale => 0
    t.integer  "subledger_id",  :precision => 38, :scale => 0
    t.decimal  "budgeted_pct"
    t.decimal  "budgeted_amt"
    t.decimal  "committed_amt"
    t.decimal  "billed_amt"
    t.decimal  "paid_amt"
    t.integer  "created_by",    :precision => 38, :scale => 0
    t.integer  "modified_by",   :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgets", :force => true do |t|
    t.integer  "year",            :precision => 38, :scale => 0
    t.string   "month"
    t.integer  "marketentity_id", :precision => 38, :scale => 0
    t.integer  "businessunit_id", :precision => 38, :scale => 0
    t.integer  "ledger_id",       :precision => 38, :scale => 0
    t.decimal  "budgeted_amt"
    t.decimal  "committed_amt"
    t.decimal  "billed_amt"
    t.decimal  "paid_amt"
    t.integer  "created_by",      :precision => 38, :scale => 0
    t.integer  "modified_by",     :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businessunits", :force => true do |t|
    t.string   "name"
    t.integer  "marketentity_id", :precision => 38, :scale => 0
    t.integer  "created_by",      :precision => 38, :scale => 0
    t.integer  "modified_by",     :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clusters", :force => true do |t|
    t.string   "name"
    t.integer  "geography_id", :precision => 38, :scale => 0
    t.integer  "created_by",   :precision => 38, :scale => 0
    t.integer  "modified_by",  :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clusters_stores", :id => false, :force => true do |t|
    t.integer "cluster_id", :precision => 38, :scale => 0
    t.integer "store_id",   :precision => 38, :scale => 0
  end

  create_table "franchisees", :force => true do |t|
    t.string   "name"
    t.string   "owner"
    t.integer  "tin",         :precision => 38, :scale => 0
    t.string   "street1"
    t.string   "street2"
    t.integer  "pincode",     :precision => 38, :scale => 0
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "landline",    :precision => 38, :scale => 0
    t.integer  "mobile",      :precision => 38, :scale => 0
    t.string   "facsimile"
    t.string   "email"
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geographies", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ledgers", :force => true do |t|
    t.string   "category"
    t.string   "code"
    t.string   "name"
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legalentities", :force => true do |t|
    t.string   "name"
    t.integer  "tin",         :precision => 38, :scale => 0
    t.integer  "office_id",   :precision => 38, :scale => 0
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketentities", :force => true do |t|
    t.string   "name"
    t.integer  "legalentity_id", :precision => 38, :scale => 0
    t.integer  "created_by",     :precision => 38, :scale => 0
    t.integer  "modified_by",    :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "street1"
    t.string   "street2"
    t.integer  "pincode",     :precision => 38, :scale => 0
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "landline",    :precision => 38, :scale => 0
    t.integer  "mobile",      :precision => 38, :scale => 0
    t.string   "facsimile"
    t.string   "email"
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.integer  "franchisee_id", :precision => 38, :scale => 0
    t.integer  "parent_id",     :precision => 38, :scale => 0
    t.string   "street1"
    t.string   "street2"
    t.integer  "pincode",       :precision => 38, :scale => 0
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "landline",      :precision => 38, :scale => 0
    t.integer  "mobile",        :precision => 38, :scale => 0
    t.string   "facsimile"
    t.string   "email"
    t.integer  "created_by",    :precision => 38, :scale => 0
    t.integer  "modified_by",   :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subledgers", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "ledger_id",   :precision => 38, :scale => 0
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliercontracts", :force => true do |t|
    t.integer  "supplier_id",    :precision => 38, :scale => 0
    t.datetime "effective_date"
    t.decimal  "discount"
    t.integer  "creditperiod",   :precision => 38, :scale => 0
    t.integer  "created_by",     :precision => 38, :scale => 0
    t.integer  "modified_by",    :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "contact1"
    t.string   "contact2"
    t.string   "street1"
    t.string   "street2"
    t.integer  "pincode",     :precision => 38, :scale => 0
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "landline",    :precision => 38, :scale => 0
    t.integer  "mobile",      :precision => 38, :scale => 0
    t.string   "facsimile"
    t.string   "email"
    t.integer  "created_by",  :precision => 38, :scale => 0
    t.integer  "modified_by", :precision => 38, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "versions", :force => true do |t|
    t.integer  "versioned_id",   :precision => 38, :scale => 0
    t.string   "versioned_type"
    t.integer  "user_id",        :precision => 38, :scale => 0
    t.string   "user_type"
    t.string   "user_name"
    t.text     "modifications"
    t.integer  "number",         :precision => 38, :scale => 0
    t.integer  "reverted_from",  :precision => 38, :scale => 0
    t.string   "tag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["created_at"], :name => "index_versions_on_created_at"
  add_index "versions", ["number"], :name => "index_versions_on_number"
  add_index "versions", ["tag"], :name => "index_versions_on_tag"
  add_index "versions", ["user_id", "user_type"], :name => "i_versions_user_id_user_type"
  add_index "versions", ["user_name"], :name => "index_versions_on_user_name"
  add_index "versions", ["versioned_id", "versioned_type"], :name => "i_ver_ver_id_ver_typ"

end
