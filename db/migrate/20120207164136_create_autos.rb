class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
