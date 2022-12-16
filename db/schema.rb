ActiveRecord::Schema[7.0].define(version: 2022_12_15_162502) do

  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "driving_course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["driving_course_id"], name: "index_cart_items_on_driving_course_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "driving_courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "date"
    t.integer "quantity"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.integer "product_type", default: 0
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "driving_course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driving_course_id"], name: "index_order_items_on_driving_course_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.boolean "newsletter"
    t.string "phone"
    t.integer "height"
    t.integer "weight"
    t.string "clothing_size"
    t.string "helmet_size"
    t.string "shoe_size"
    t.string "driving_experience"
    t.text "driving_experience_specifics"
    t.text "coaching_expectations"
    t.text "food_restriction"
    t.string "address"
    t.text "medical_contraindication"
    t.text "how_know_CRS"
    t.text "people_who_recommended"
    t.text "comments_to_organization"
    t.boolean "photo_publication_consent"
    t.string "instagram_nickname"
    t.boolean "personal_data_consent"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
