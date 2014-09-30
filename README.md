# Gominohi

ゴミの日データを生成します。

## Installation

    $ gem install gominohi  # 未リリース

Or

    $ git clone https://github.com/myokoym/gominohi.git
    $ cd gominohi
    $ rake install

## Usage

    $ gominohi generate 地区 開始日 終了日 特殊曜日の順序（1-4）

For example:

    $ gominohi generate shiroishi_1 2014-09-01 2015-09-30 1

### 特殊曜日の順序

* 1

        [:paper, :not_burn, :paper, :leaf]

* 2

        [:leaf, :paper, :not_burn, :paper]

* 3

        [:paper, :leaf, :paper, :not_burn]

* 4

        [:not_burn, :paper, :leaf, :paper]

## Testing

    $ test/run-test.rb

## Authors

* Masafumi Yokoyama `<myokoym@gmail.com>`

## License

MIT License. See LICENSE.txt for details.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
