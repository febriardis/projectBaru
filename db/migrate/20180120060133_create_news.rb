class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.bigint :idUser
      t.string :kirimanUser

      t.timestamps
    end
  end
end
