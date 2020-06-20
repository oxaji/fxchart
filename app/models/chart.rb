class Chart < ApplicationRecord

  def check_image
    if !['.jpg', '.png', '.gif'].include?(File.extname(name).downcase)
        errors.add(:image, "JPG, PNG, GIFのみアップロードできます。")
    elsif file.size > 1.megabyte
        errors.add(:image, "1MBまでアップロードできます")
    end
  end

  validate :check_image
  validates :name, presence: true
  validates :text, presence: true
end
