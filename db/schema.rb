

ActiveRecord::Schema.define(version: 20160818232740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "password_digest"
    t.string   "username"
    t.string   "curr_city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
