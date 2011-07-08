class Event
  include Mongoid::Document
  field :name, :type => String
  field :date, :type => Time
  field :description, :type => String
  field :city, :type => String
  field :place, :type => String
  field :type, :type => String
  field :price, :type => String
  field :logo, :type => String
  field :website, :type => String
  field :twitter, :type => String
  field :hashtag, :type => String
  field :regurl, :type => String
  field :speakers, :type => String
  field :schedule, :type => String
  field :slug, :type => String

  mount_uploader :logo, LogoUploader

  key :name

  attr_accessible :name, :date, :description, :author, :logo, :city, :place, :type, :price, :website, :twitter, :hashtag, :regurl, :speakers, :schedule
  referenced_in :user, :inverse_of => :author

  before_validation :set_slug

  def set_slug
    self.slug = rand(36**8).to_s(36) if self.slug.nil?
  end
end
