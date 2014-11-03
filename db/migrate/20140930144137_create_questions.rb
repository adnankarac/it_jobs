class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.references :test, index: true

      t.timestamps
    end
  end
end
