class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
