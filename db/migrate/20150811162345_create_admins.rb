class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false

      t.timestamps null: false
    end
  end
end
