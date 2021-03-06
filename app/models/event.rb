class Event < ActiveRecord::Base
  extend FriendlyId
  acts_as_taggable
 attr_accessible :accepted, :assisted_by, :cancelled, :conference_id, :content_url, :description, :duration, :end_dtime, :id, :language, :level, :location, :notes, :room, :shown, :slug, :start_dtime, :speakers_attributes, :subclass, :summary, :tags, :title, :validation_email, :verified, :votes
  attr_accessor :tags, :validation_email
  belongs_to :conference
  friendly_id :title, use: [:slugged, :scoped], scope: :conference
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :speakers
  accepts_nested_attributes_for :speakers, reject_if: :all_blank, allow_destroy: true

  TOKEN_LENGTH=32

  validates :title,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true,
            uniqueness: { scope: :conference }

  validates :description,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true

  validates :content_url,
            url: true,
            allow_blank: true

  validates :notes,
            allow_blank: true,
            format: { with: /\A[a-z0-9\W]+\z/i }

  validates :language,
            allow_blank: true,
            inclusion: { in: I18n.t("event.languages").keys.collect {|l| l.to_s} }

  validates :subclass,
            presence: true

  validates :summary,
            format: { with: /\A[a-z0-9\W]+\z/i },
            presence: true

  enum duration: [:unspecified_duration, :t_0, :t_1, :t_2, :t_3, :t_4, :t_5]
  enum level: [:unspecified_level, :noob, :easy, :medium, :hard, :hacker]
  enum subclass: [:talk, :workshop]
  
  #validates :terms_of_service, acceptance: { accept: 'yes' }

  #before_create :lang_filter


  #def to_ics
  #  event = Icalendar::Event.new
  #  event.start = self.date.strftime("%Y%m%dT%H%M%S")
  #  event.end = self.end_date.strftime("%Y%m%dT%H%M%S")
  #  event.summary = self.title
  #  event.description = self.summary
  #  event.location = self.location
  #  event.klass = "PUBLIC"
  #  event.created = self.created_at
  #  event.last_modified = self.updated_at
  #  event.uid = event.url = "#{PUBLIC_URL}events/#{self.id}"
  #  event.add_comment("AF83 - Shake your digital, we do WowWare")
  #  event
  #end


  #
  # Should only be called by the WizardEvent model when saving an Event
  #
  def save_and_verify(email)
    if self.save
      # Generate Verifier
      ver = Verifier.create(email: email, event_id: self.id, verified: false, verify_type: "event")
      return true
    else
      return false
    end 
  end

  def speakers
    return Speaker.where(event_id: self, confirmed: true)
  end

  def speaker?
    sp = Speaker.where(event_id: self, confirmed: true).first
    if sp.nil?
      return false
    else
      return true
    end
  end

  private

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
