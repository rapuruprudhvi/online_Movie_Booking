class Movie < ApplicationRecord
  # Assuming you have associations like belongs_to :theatre and belongs_to :user
  belongs_to :theatre
  belongs_to :user

  # Define ransackable attributes
  def self.ransackable_attributes(auth_object = nil)
    %w[id title rating created_at updated_at]
  end

  # Define ransackable associations
  def self.ransackable_associations(auth_object = nil)
    %w[theatre user]
  end
end
