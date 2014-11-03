class Test < ActiveRecord::Base
  belongs_to :company
  has_many :questions
end

