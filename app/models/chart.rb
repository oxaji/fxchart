class Chart < ApplicationRecord

  def check_image
     !['.jpg', '.png', '.gif'].include?(File.extname(name).downcase)
  end

  validate :check_image
  validates :name, presence: true
  validates :text, presence: true

  enum winlose: {
    "勝った":1, "負けた":2
  },_suffix: true

  enum style: {
    "スキャルピング":1,"デイトレード":2,"スイングトレード":3,"長期保有":4
  },_suffix: true

end
