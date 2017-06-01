# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170523013443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sintomas", force: :cascade do |t|
    t.string   "nome"
    t.boolean  "sintoma_obrigatorio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sintomas_transtornos", force: :cascade do |t|
    t.integer  "sintoma_id"
    t.integer  "transtorno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transtorno_nao_solucionado_sintomas", force: :cascade do |t|
    t.integer  "transtornos_nao_solucionado_id"
    t.integer  "sintoma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transtorno_pesquisado_transtornos", force: :cascade do |t|
    t.integer  "transtornos_pesquisado_id"
    t.integer  "transtorno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transtornos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "min_qtd_sint"
    t.integer  "pagina"
    t.integer  "categorium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transtornos_nao_solucionados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transtornos_pesquisados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
