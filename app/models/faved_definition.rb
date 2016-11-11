class FavedDefinition < ActiveRecord::Base
  belongs_to :user

  validates :word, :definition, presence: true
end
