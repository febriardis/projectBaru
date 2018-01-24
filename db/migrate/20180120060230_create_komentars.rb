class CreateKomentars < ActiveRecord::Migration[5.1]
  def change
    create_table :komentars do |t|
      t.bigint :idUser
      t.bigint :idKiriman
      t.string :komentarUser

      t.timestamps
    end
  end
end
