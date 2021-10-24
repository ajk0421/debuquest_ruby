require './base.rb'
require './q8/calc.rb'
require './q8/q8.rb'

class Q8::Method < Base

  def self.execute
    number = [2, 5, 10, 30]

    # ここから下のコードは変更しないこと
    if Q8::Calc.twice(numbers) == [4, 10, 20, 60]
      puts "おめでとう！正解です！"
    else
      raise
    end

  rescue
    puts "残念！不正解！ binding.pry を使いながらどの処理に問題があるか確認しましょう！"
  end
end
