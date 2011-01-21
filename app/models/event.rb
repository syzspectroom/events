class Event
  include Mongoid::Document
  include Mongoid::Timestamps 
  field :name 
  field :date
  field :description
#  field :author
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
  field :slug
  mount_uploader :logo, LogoUploader

  field :name
  key :name
  
  attr_accessible :name, :date, :description, :author, :logo, :city, :place, :type, :price, :website, :twitter, :hashtag, :regurl, :speakers, :schedule
  referenced_in :user, :inverse_of => :author
  
  before_validation :set_slug

  def set_slug
    self.slug = rand(36**8).to_s(36) if self.slug.nil?
  end


end