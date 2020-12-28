class ChoiseB < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ファミリーにおすすめ' },
    { id: 3, name: 'パーティーに' },
    { id: 4, name: '内装にこだわり' },
    { id: 5, name: '高級志向' },
    { id: 6, name: '駅近' },
    { id: 7, name: 'シェフがすごい' },
    { id: 8, name: 'お酒の種類が豊富' },
    { id: 9, name: '高いお酒が飲みたい' },
    { id: 10, name: 'カジュアルに楽しむ' },
    { id: 11, name: 'コーヒーにこだわり' },
    { id: 12, name: 'スイーツにこだわり' },
    { id: 13, name: '個性派・面白い' }
  ]

  include ActiveHash::Associations
  has_many :shops
  end