class TestResult < ActiveRecord::Base
  belongs_to :test
  belongs_to :user
end
