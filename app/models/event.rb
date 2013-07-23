class Event < ActiveRecord::Base
  validates :date, :title, :email, :name, :presence => true
  validates :name, length: { minimum: 3 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :date, :with => /(\d{4}).?(\d{2}).?(\d{2})/, :on => :create
  validate :date_present
  validates_uniqueness_of :title

  def date_present
    if date != Time.now.to_date
      errors.add(:date, "must be today's date")
    end

  end

end
