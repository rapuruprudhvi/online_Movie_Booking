class Theatre < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[id name location created_at updated_at] # List the attributes you want to be searchable
      end
end
