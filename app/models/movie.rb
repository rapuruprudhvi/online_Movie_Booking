class Movie < ApplicationRecord
  belongs_to :theatre
  has_many:users

  def self.ransackable_associations(auth_object = nil)
    %w[theatre] 
  end
end
