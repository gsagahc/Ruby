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

ActiveRecord::Schema.define(version: 20171217225508) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj_cpf"
    t.decimal  "comissao_a_prazo"
    t.string   "endereco"
    t.string   "site"
    t.string   "fone"
    t.string   "celular"
    t.string   "razao_social"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "contas_pagar", force: :cascade do |t|
    t.integer  "id_cliente"
    t.decimal  "valor"
    t.date     "data"
    t.date     "vencimento"
    t.string   "obs"
    t.date     "data_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contas_receber", force: :cascade do |t|
    t.integer  "id_fornecedor"
    t.decimal  "valor"
    t.date     "data"
    t.date     "vencimento"
    t.string   "obs"
    t.date     "data_pago"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contas_receberes", force: :cascade do |t|
    t.integer  "id_fornecedor"
    t.decimal  "valor"
    t.date     "data"
    t.date     "vencimento"
    t.string   "obs"
    t.date     "data_pago"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "fornecedores", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "razao_social"
    t.string   "email"
    t.string   "site"
    t.string   "fone"
    t.string   "celular"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "razao_social"
    t.string   "email"
    t.string   "site"
    t.string   "fone"
    t.string   "celular"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
