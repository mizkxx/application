
#作成したUserモデルにdeviseで使用する機能が記述されている

class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :post_images, dependent: :destroy
    has_many :post_comments, dependent: :destroy
    has_many :favorites, dependent: :destroy
    #has_manyの後には1:Nの関係になるモデル名の複数形を記述
    #dependent: :destroyは、has_manyで使えるオプションです
    #1:Nの関係の1のデータが削除された時、関連するNのデータも削除する設定になります。
	#この設定ではUserのデータが削除された時、そのUserが投稿したコメントのデータも一緒に削除されます
end