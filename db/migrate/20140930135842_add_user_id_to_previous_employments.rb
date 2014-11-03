class AddUserIdToPreviousEmployments < ActiveRecord::Migration
  def change
    add_column :previous_employments, :user_id, :integer
  end
end
