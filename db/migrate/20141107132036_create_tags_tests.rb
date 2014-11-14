class CreateTagsTests < ActiveRecord::Migration
  def change
    create_table :tags_tests do |t|
      t.references :tag, index: true
      t.references :test, index: true
      t.timestamps
    end
  end
end
