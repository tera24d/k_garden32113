class Produce < ActiveHash::Base
  self.data = [
    { id: 0, name: '--', seed_period: '--', seed_start: '--', seed_end: '--', planting_period: '--', planting_start: '--', planting_end: '--', harvest_period: '--', harvest_start: '--', harvest_end: '--', seeding_period: '--', seeding_start: '--', seeding_end: '--' },
    { id: 1, name: 'ハクサイ', seed_period: '8月下旬', seed_start: '--', seed_end: '--', planting_period: '9月中旬', planting_start: '--', planting_end: '--', harvest_period: '11月〜12月', harvest_start: '--', harvest_end: '--', seeding_period: '6月下旬', seeding_start: '--', seeding_end: '--' },
    { id: 2, name: 'ピーマン', seed_period: '3月上旬', seed_start: '--', seed_end: '--', planting_period: '4月中旬', planting_start: '--', planting_end: '--', harvest_period: '7月〜10月', harvest_start: '--', harvest_end: '--', seeding_period: '10月上旬', seeding_start: '--', seeding_end: '--' },
    { id: 3, name: 'ニンジン', seed_period: '4中旬月〜5月中旬', seed_start: '--', seed_end: '--', planting_period: '--', planting_start: '--', planting_end: '--', harvest_period: '7月下旬〜10月中旬', harvest_start: '--', harvest_end: '--', seeding_period: '--', seeding_start: '--', seeding_end: '--' },
    { id: 4, name: 'レタス', seed_period: '3月上旬', seed_start: '--', seed_end: '--', planting_period: '4月下旬', planting_start: '--', planting_end: '--', harvest_period: '5月中旬〜6月中旬', harvest_start: '--', harvest_end: '--', seeding_period: '9月上旬', seeding_start: '--', seeding_end: '--' },

  ]

  include ActiveHash::Associations
  has_many :events

end
