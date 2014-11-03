class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.integer :points
      t.references :test, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
