class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :sex
         belongs_to :prefecture
         
         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'
              
         validates :password, length: { minimum: 6 }
                
         with_options presence: true do
           validates :nickname
           with_options numericality: { other_than: 0, message: 'select' } do
             validates :sex_id
             validates :prefecture_id
           end
         end
end
