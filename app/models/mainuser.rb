class Mainuser < ApplicationRecord

    has_many :created_projects, class_name: 'Project', foreign_key: 'manager_id'
    has_many :assigned_bugs, class_name: 'Bug', foreign_key: 'developer_id'
    has_many :user_projects
    has_many :projects, through: :user_projects

end
