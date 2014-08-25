class CreateShoots < ActiveRecord::Migration
  def change
    create_table :shoots do |t|
      t.string :catagory
      t.string :name
      t.string :discription

      t.timestamps
    end
  end
end
