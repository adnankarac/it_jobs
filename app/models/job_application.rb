class JobApplication < ActiveRecord::Base
  belongs_to :jobApplicationStatus
  belongs_to :job
  belongs_to :user
end
