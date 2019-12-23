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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190225195054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "aprobadors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_aprobadors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_aprobadors_on_reset_password_token", unique: true
  end

  create_table "contentidos", force: :cascade do |t|
    t.integer "eje_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "nombre"
    t.integer "final"
    t.text "oa"
  end

  create_table "creadors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_creadors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_creadors_on_reset_password_token", unique: true
  end

  create_table "ejercicios", force: :cascade do |t|
    t.boolean "aprobado"
    t.integer "contenido_id"
    t.boolean "bandera"
    t.text "comentario"
    t.integer "molde_id"
    t.text "enunciado"
    t.string "imagen"
    t.string "resp_correcta"
    t.text "w1"
    t.text "w2"
    t.text "w3"
    t.text "w4"
    t.text "op1"
    t.text "op2"
    t.text "op3"
    t.text "op4"
    t.text "op5"
    t.text "hint"
    t.integer "dificultad"
    t.string "habilidad"
    t.integer "last_pre_ex_id"
    t.integer "creador_id"
    t.integer "aprobador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "solucion"
    t.integer "sub_contenido_id"
  end

  create_table "ejes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "nombre"
  end

  create_table "moldes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pre_exes", force: :cascade do |t|
    t.integer "contenido_id"
    t.integer "molde_id"
    t.text "enunciado"
    t.string "imagen"
    t.text "resp_correcta"
    t.text "w1"
    t.text "w2"
    t.text "w3"
    t.text "w4"
    t.text "op1"
    t.text "op2"
    t.text "op3"
    t.text "op4"
    t.text "op5"
    t.text "hint"
    t.integer "dificultad"
    t.string "habilidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "solucion"
    t.integer "sub_contenido_id"
  end

  create_table "sub_contenidos", force: :cascade do |t|
    t.integer "contenido_id"
    t.text "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_post"
    t.integer "id_pre"
  end

  create_table "uploads", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
