class Participant
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :bio, type: String
  field :pitching_idea, type: Boolean
end
