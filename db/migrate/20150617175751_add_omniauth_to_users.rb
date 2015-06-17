class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :password_digest
      t.string :nickname
      t.string :provider
      t.string :uid
      t.string :access_token
    end
  end
end
