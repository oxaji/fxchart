class Chart < ApplicationRecord

  def check_image
     !['.jpg', '.png', '.gif'].include?(File.extname(name).downcase)
  end

  validate :check_image
  validates :name, presence: true
  validates :text, presence: true

  enum winlose: {
    勝った:1, 負けた:2
  }


end
