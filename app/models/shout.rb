class Shout < ActiveRecord::Base
  belongs_to :user
  default_scope { order("created_at DESC") } 
  belongs_to :content, polymorphic: true

  validates_associated :content

  def self.text_shouts
    where("content_type = ?", "TextShout")
  end
end
