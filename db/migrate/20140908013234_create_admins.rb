class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.integer :senha
      t.integer :limiteCopias

      t.timestamps
    end
  end
end
