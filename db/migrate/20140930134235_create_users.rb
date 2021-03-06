class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :firstName
      t.string :lastName
      t.date :dateOfBirth
      t.references :userType, index: true

      t.timestamps
    end
  end
end
