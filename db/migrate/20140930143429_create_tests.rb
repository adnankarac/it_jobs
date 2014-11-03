class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :description
      t.integer :max
      t.references :company, index: true

      t.timestamps
    end
  end
end
