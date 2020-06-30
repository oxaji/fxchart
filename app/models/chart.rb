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

  enum timefoot: {
    "1分足":1, "3分足":2,"5分足":3,"10分足":4,"15分足":5,"30分足":6,"1時間足":7,"4時間足":8,"日足":9,"週足":10,"月足":11
  },_suffix: true

  enum pair:{
    "米ドル/円":1, "ユーロ/円":2, "ポンド/円":3, "豪ドル/円":4, "NZドル/円":5, "カナダドル/円":6, "スイスフラン/円":7, "ユーロ/米ドル":8, "ポンド/米ドル":9, "豪ドル/米ドル":10, "NZドル/米ドル":11, "カナダドル/米ドル":12, "ユーロ/ポンド":13, "ユーロ/豪ドル":14, "ユーロ/NZドル":15, "ユーロ/スイスフラン":16, "ポンド/豪ドル":17, "豪ドル/NZドル":18, "その他通過ペア":19
  }
  mount_uploader :image, ImageUploader
end
