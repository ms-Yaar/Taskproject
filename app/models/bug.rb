class Bug < ApplicationRecord

    belongs_to :creator, class_name: 'Mainuser'
    belongs_to :developer, class_name: 'Mainuser'
    belongs_to :project
  
    enum bug_type: [:feature_bug, :bug_feature]
enum status: { feature: [:new, :started, :completed], bug: [:new, :started, :resolved] }



end
