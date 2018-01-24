class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nama
      t.string :username
      t.string :password_digest
      t.date :tgl_lahir

      t.timestamps
    end
  end
end
