class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :matricula
      t.string :diretoria
      t.string :senha

      t.timestamps
    end
  end
end
