class PostImage < ApplicationRecord
	belongs_to :user
  #PostImageモデルに紐付くのは1つのUserモデルなので単数形になる点に注意
  attachment :image # ここを追加（_idは含めません）
  has_many :post_comments, dependent: :destroy
  #PostCommentモデルを複数持つ
   has_many :favorites, dependent: :destroy
   validates :shop_name, presence: true
   validates :image, presence: true

  	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
    #引数で渡されたユーザのidがFavoritesテーブル内に存在（exists?）しているかを調べる
    #存在していればTrue、存在していなければFalseを返す
end