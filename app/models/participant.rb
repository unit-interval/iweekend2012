class Participant
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :occupation, type: String
  field :organization, type: String
  #field :role, type: String
  field :pitching_idea, type: Boolean, default: false
  field :idea_desc, type: String
  field :bio, type: String

  validates :name, :email, :occupation, :organization, :presence => true
  validates :email, :uniqueness => true
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
  validates :name, :email, :occupation, :organization, :length => { :maximum => 255 }
  validates :idea_desc, :bio, :length => { :maximum => 2048 }
  #validates :role, :inclusion => { :in => %w(developer designer)}


end
