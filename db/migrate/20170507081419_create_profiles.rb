class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :display_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :postcode
      t.string :country
      t.integer :home_phone
      t.integer :work_phone
      t.integer :mobiile_phone
      t.string :facebook
      t.string :instagram
      t.string :twitter

      t.timestamps
    end
  end
end
