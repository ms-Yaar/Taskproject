class Project < ApplicationRecord
  
  belongs_to :manager
  has_many :bugs
  has_many :user_projects
  has_many :mainusers, through: :user_projects
end
