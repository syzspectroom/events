class Event
  include Mongoid::Document
  include Mongoid::Timestamps 
  field :name 
  field :date
  field :description
  field :author
  field :city #event city
  field :place #event address
  field :type 
  field :price
  field :logo
  field :website
  field :twitter
  field :hashtag
  field :regurl
  field :speakers
  field :schedule
end