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

ActiveRecord::Schema.define(version: 20190830073547) do

  create_table "apertura_billetes", force: :cascade do |t|
    t.date "fechab"
    t.datetime "hora"
    t.integer "nromaquina"
    t.decimal "valorb"
    t.integer "billetef"
    t.decimal "totalb"
    t.integer "totalf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apertura_monedas", force: :cascade do |t|
    t.date "fecham"
    t.datetime "horam"
    t.integer "nromaquinam"
    t.decimal "valorm"
    t.integer "monedaf"
    t.decimal "totalm"
    t.integer "totalfm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "usuario"
    t.string "password"
    t.string "sala"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "premio_manuals", force: :cascade do |t|
    t.integer "nformato"
    t.date "fecha"
    t.string "maquina"
    t.decimal "valor"
    t.decimal "coninicial"
    t.decimal "confinal"
    t.integer "dni"
    t.string "nomcliente"
    t.string "apepaterno"
    t.string "apematerno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recaudacions", force: :cascade do |t|
    t.date "fechar"
    t.datetime "horar"
    t.integer "nromaquinar"
    t.decimal "rellenoini"
    t.decimal "valorr"
    t.integer "monedafr"
    t.decimal "rellenofin"
    t.decimal "totalr"
    t.integer "totalfr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
