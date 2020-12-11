class Sex < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 2, name: '男性' },
    { id: 3, name: '女性' },
    { id: 4, name: '選択しない' }
  ]
  include ActiveHash::Associations
  has_many :users
end
