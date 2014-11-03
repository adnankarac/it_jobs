class CreateJobApplicationStatuses < ActiveRecord::Migration
  def change
    create_table :job_application_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
