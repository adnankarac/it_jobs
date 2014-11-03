class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.date :date
      t.references :jobApplicationStatus, index: true
      t.references :job, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
