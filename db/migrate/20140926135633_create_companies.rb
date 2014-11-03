class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :size
      t.string :website
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
