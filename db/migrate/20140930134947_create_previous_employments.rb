class CreatePreviousEmployments < ActiveRecord::Migration
  def change
    create_table :previous_employments do |t|
      t.date :from
      t.date :to
      t.string :title
      t.string :description
      t.string :companyName

      t.timestamps
    end
  end
end
