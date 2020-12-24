class Ridge < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '①' },
    { id: 2, name: '②' },
    { id: 3, name: '③' },
    { id: 4, name: '④' }
  ]

  include ActiveHash::Associations
  has_many :events
  
end
