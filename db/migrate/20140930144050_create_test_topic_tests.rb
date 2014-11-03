class CreateTestTopicTests < ActiveRecord::Migration
  def change
    create_table :test_topic_tests do |t|
      t.references :test, index: true
      t.references :testTopic, index: true

      t.timestamps
    end
  end
end
