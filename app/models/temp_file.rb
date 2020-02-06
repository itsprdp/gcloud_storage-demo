class TempFile < ActiveRecord::Base
  include GcloudStorage::Uploader

  before_save :test, if: :file_changed?

  # attribute :file
  mount_gcloud_uploader :file #[, presence: true] #=> Run's presence validation

  def test
    puts "(model): RUNNING before_save CALLBACK!!!##"
  end
end
