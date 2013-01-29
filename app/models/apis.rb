class Apis
  include Mongoid::Document
	include Mongoid::Timestamps
  field :name, type: String
  field :description, type: String, default: ''

  belongs_to :status
  validates_presence_of :name
end
