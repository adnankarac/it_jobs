class CreateTestTopics < ActiveRecord::Migration
  def change
    create_table :test_topics do |t|
      t.string :description

      t.timestamps
    end
  end
end
