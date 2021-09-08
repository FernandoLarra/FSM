# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_08_104324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "apellidos", null: false
    t.string "direccion"
    t.string "telefono"
    t.integer "nit", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nit"], name: "index_clientes_on_nit", unique: true
  end

  create_table "facturas", force: :cascade do |t|
    t.string "no_factura", null: false
    t.string "fecha_emision", null: false
    t.string "no_empleado", null: false
    t.string "serie", null: false
    t.string "nit", null: false
    t.string "cantidad_producto", null: false
    t.string "precio_producto", null: false
    t.string "total", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["no_factura"], name: "index_facturas_on_no_factura", unique: true
  end

  create_table "productos", force: :cascade do |t|
    t.string "serie", null: false
    t.string "nombre_producto", null: false
    t.string "peso", null: false
    t.integer "precio", null: false
    t.string "marca", null: false
    t.integer "cantidad", null: false
    t.date "fecha_caducidad"
    t.index ["serie"], name: "index_productos_on_serie", unique: true
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion"
    t.string "telefono"
    t.string "correo", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["correo"], name: "index_proveedores_on_correo", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_hash", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
