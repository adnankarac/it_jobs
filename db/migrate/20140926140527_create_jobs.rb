class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :status
      t.text :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
