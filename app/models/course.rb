class Course < ApplicationRecord
  belongs_to :user
  has_rich_text :content


  Course.all.with_rich_text_content # Preload the body without attachments.
  Course.all.with_rich_text_content_and_embeds # Preload both body and attachments.

  ################## SLUG ###############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
end
