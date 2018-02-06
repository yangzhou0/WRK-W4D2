class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validate :does_not_overlap_approved_request

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    self.class
      .where('cat_id = ?', self.cat_id)
      .where.not(id: id)
      .where.not('start_date > ? OR end_date < ?', self.end_date, self.start_date)
  end

  def overlapping_approved_requests
    self.overlapping_requests
      .where('status = ?', "Approved")
  end

  def does_not_overlap_approved_request
    if self.overlapping_approved_requests.exists? && self.status != 'Denied'
      errors[:start_date] << 'Overlapping dates with approved request'
    end
  end

  def approve!
    ActiveRecord::Base.transaction do
      self.update(status: 'Approved')
      overlapping_requests.update(status: 'Denied')
    end
  end

  def deny!
    self.update(status: 'Denied')
  end

end
