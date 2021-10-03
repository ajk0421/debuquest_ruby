# DebuQuest -Ruby-

## 実行方法

0. clone 後最初に以下を実行してください

```
bundle install --path vendor/bundle
```

1. アプリ直下で以下を実行

```
bundle exec ruby execution.rb
```

2. 挑戦したい問題番号を入力してください

```
挑戦する問題番号を入力してください！！
1
```

3. 「2」を実行すると、`execution.rb` 内の問題番号に対応したメソッドが実行されます
   例: 問 1 だと `q1メソッド` が実行されます。

4. 各問題の指示通りの挙動になるようにコードを修正してください

※修正対象のファイルは各問題番号に対応するフォルダの範囲内で修正してください。

例: 問 1 を修正する際は `q1フォルダ` 内のみで修正

## 問題

### 問 1

- プログラムが正しく動くようにしてください

# 内藤
```rb
require "pry"

def output_value(array)
  # -------- 編集可 --------
  if araay
    araay.each do |v|
      puts v
    end
  else
    puts "配列が空です"
  end
  # -------- ここまで --------
end

# -------- 以下編集不可 --------
animals = ["dog", "cat"]
output_value(animals)

empty_array = []
output_value(empty_array)
# -------- ここまで --------
```

## 問題
- 次のプログラムを実行した際、以下の実行結果になるように修正してください。

```zsh
dog
cat
配列が空です
```
### 条件
- **編集可**の部分以外は修正を行わないこと
- if~else の条件分岐は行うこと

## 解答
- araay → array にタイポを修正
- 空配列に対する条件判定の誤りを修正

```rb
require "pry"

def output_value(array)
  # -------- 編集可 --------
  if array.empty?
    puts "配列が空です"
  else
    array.each do |v|
      puts v
    end
  end
  # -------- ここまで --------
end

# -------- 以下編集不可 --------
animals = ["dog", "cat"]
output_value(animals)

empty_array = []
output_value(empty_array)
# -------- ここまで --------
```
## 解説
Ruby の真偽値は nil, false は偽。
それ以外は全て真となります。
(言語によって真偽値の条件が異なるので注意)

空配列については真 (true) の判定となる為、空配列か判定する `empty?` メソッドを使うと便利です。
(Rails の場合は `present?`, `blank?` メソッドが追加で用意されている）

```rb
# Rails の場合
if array.present?
   array.each do |v|
      puts v
   end
else
   puts "配列が空です"
end

# 以下でも間違いではないが、あまり見ない
if array == []
   puts "配列が空です"
   ...
end
```
## 参考
- [nil?, empty?, blank?, present?, exists?の違いと使いどころ](https://nishinatoshiharu.com/rails-boolean-methods/)
- [Ruby の真偽値](https://scrapbox.io/masuyama13/Ruby_%E3%81%AE%E7%9C%9F%E5%81%BD%E5%80%A4)
