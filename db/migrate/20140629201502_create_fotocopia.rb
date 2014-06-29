class CreateFotocopia < ActiveRecord::Migration
  def change
    create_table :fotocopia do |t|
      t.string :titulo
      t.integer :originais
      t.integer :quantidade
      t.date :data
      t.text :justificativa

      t.timestamps
    end
  end
end
