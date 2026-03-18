class VideoProject < ApplicationRecord
  has_many :production_tasks, dependent: :destroy
end
