class UserProject < ApplicationRecord
  belongs_to :mainuser
  belongs_to :project

  

  enum role: [:developer, :qa, :manager]
end
