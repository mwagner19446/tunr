class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", null: false
      t.string "last_name", null: false 
      t.date "date_of_birth", null: false
      t.string "sex"
      t.string "email", unique: true
      t.string "facebook_link"
      t.string "password", null: false
    end
  end
end
