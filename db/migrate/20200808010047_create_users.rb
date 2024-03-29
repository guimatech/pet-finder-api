class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
