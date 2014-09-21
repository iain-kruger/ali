class AddThumnailToShoots < ActiveRecord::Migration
  def change
    add_column :shoots, :thumbnail, :string
  end
end
