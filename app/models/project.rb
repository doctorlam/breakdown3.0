class Project < ApplicationRecord
	has_many :milestones, :dependent => :destroy
	belongs_to :user
end
