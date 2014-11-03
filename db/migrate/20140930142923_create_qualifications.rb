class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.date :from
      t.date :to
      t.string :description
      t.string :faculty
      t.string :university
      t.references :user, index: true

      t.timestamps
    end
  end
end
