class Area < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---' },
    { id: 2,  name: '薩川' },
    { id: 3,  name: '実久' },
    { id: 4,  name: '芝' },
    { id: 5,  name: '阿多地' },
    { id: 6,  name: '須子茂' },
    { id: 7,  name: '嘉入' },
    { id: 8,  name: '西阿室' },
    { id: 9,  name: '瀬相' },
    { id: 10, name: '俵' },
    { id: 11, name: '知之浦' },
    { id: 12, name: '三浦' },
    { id: 13, name: '武名' },
    { id: 14, name: '木慈' },
    { id: 15, name: '瀬武' },
    { id: 16, name: '花冨' },
    { id: 17, name: '伊子茂' },
    { id: 18, name: '於斉' },
    { id: 19, name: '勢里' },
    { id: 20, name: '佐知克' },
    { id: 21, name: '秋徳' },
    { id: 22, name: '野見山' },
    { id: 23, name: '徳浜'},
    { id: 24, name: '安脚場' },
    { id: 25, name: '渡連' },
    { id: 26, name: '生間' },
    { id: 27, name: '諸数' },
    { id: 28, name: '勝能' },
    { id: 29, name: '押角' },
    { id: 30, name: '呑之浦' },
    { id: 31, name: '諸鈍' },
    { id: 32, name: '加計呂麻全域' },
    { id: 33, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :posts

  end