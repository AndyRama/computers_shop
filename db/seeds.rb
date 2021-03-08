# db/seeds.rb
puts 'Cleaning database...'
Computer.destroy_all
Category.destroy_all

puts 'Creating categories...'
tour = Category.create!(name: 'tour')
nano = Category.create!(name: 'nano')
mini = Category.create!(name: 'mini')

puts 'Creating computers...'
Computer.create!(sku: 'pc1', name: 'Altyk Le Grand', category: tour, photo_url: 'https://media.ldlc.com/r150/ld/products/00/05/73/38/LD0005733822_1.jpg', price_cents: '5')
Computer.create!(sku: 'pc2', name: 'ZenThree', category: tour, photo_url: 'https://media.ldlc.com/r150/ld/products/00/05/76/65/LD0005766565_1.jpg', price_cents: '10')
Computer.create!(sku: 'nanopc1', name: 'Raspberry4', category: nano, photo_url: 'https://media.ldlc.com/r374/ld/products/00/05/36/67/LD0005366736_2_0005680595.jpg', price_cents: '15')
Computer.create!(sku: 'nanopc2', name: 'Odroid Xu4', category: nano, photo_url: 'https://www.kubii.fr/7105-large_default/carte-odroid-xu4-avec-heat-sink-kubii.jpg', price_cents: '20')
Computer.create!(sku: 'minipc1', name: 'Cubic MP3', category: mini, photo_url: 'https://media.ldlc.com/r374/ld/products/00/05/47/77/LD0005477784_2.jpg', price_cents: '25')
Computer.create!(sku: 'minipc2', name: 'NUC-CEL-4-S4', category: mini, photo_url: 'https://media.ldlc.com/r374/ld/products/00/05/66/33/LD0005663356_2.jpg', price_cents: '30')

puts 'Finished!'
