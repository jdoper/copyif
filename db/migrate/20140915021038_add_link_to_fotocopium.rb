class AddLinkToFotocopium < ActiveRecord::Migration
  def change
    add_column :fotocopia, :link, :text
  end
end
