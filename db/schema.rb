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

ActiveRecord::Schema.define(:version => 20110828005954) do

  create_table "closers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :primary_key => "id_contract", :force => true do |t|
    t.string   "owner"
    t.date     "fecha"
    t.string   "co_owner"
    t.string   "benef_uno"
    t.string   "benef_dos"
    t.string   "benef_tre"
    t.string   "ocupacion"
    t.string   "calle"
    t.string   "colonia"
    t.string   "delegacion"
    t.string   "ciudad"
    t.string   "estado"
    t.string   "cp"
    t.string   "tel_casa"
    t.string   "tel_trabajo"
    t.string   "tel_movil"
    t.string   "email"
    t.string   "temporada"
    t.integer  "vigencia"
    t.string   "tipo_unidad"
    t.integer  "no_personas"
    t.float    "precio"
    t.float    "pago_inicial"
    t.integer  "no_mensual"
    t.float    "monto_mensual"
    t.date     "fecha_primer_pago"
    t.float    "abono_inicial"
    t.string   "forma_pago"
    t.float    "cuota_manto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liners", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
