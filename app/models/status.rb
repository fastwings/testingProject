class Status
  include Mongoid::Document
  field :name, type: String
  has_one :apis
  validates_presence_of :name
end
