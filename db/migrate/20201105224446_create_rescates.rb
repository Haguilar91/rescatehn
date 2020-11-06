class CreateRescates < ActiveRecord::Migration[6.0]
  def change
    create_table :rescates do |t|
      t.string :firstname
      t.string :lastname
      t.integer :childs
      t.integer :adults
      t.text :note
      t.string :phone
      t.integer :status
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
