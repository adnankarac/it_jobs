class Test < ActiveRecord::Base
  belongs_to :company
  has_many :questions
  has_and_belongs_to_many :tags
end

