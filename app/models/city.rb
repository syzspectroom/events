class City
  include Mongoid::Document
  field :name, :type => String
  field :region, :type => String
end