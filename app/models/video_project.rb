class VideoProject < ApplicationRecord
  STATUSES = [ "Planning", "Editing", "Published" ].freeze
  has_many :production_tasks, dependent: :destroy
end
