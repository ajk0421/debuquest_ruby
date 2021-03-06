require './base.rb'
require './q8/zip_client.rb'
require './q8/validation_error.rb'

class Q8::Main < Base
  def self.execute
    begin
      puts '郵便番号を入力してください'
      input_value = gets.chomp

      full_address = Q8::ZipClient.get_full_address(input_value)

      puts '入力された郵便番号の住所は'
      puts "#{full_address} です"
    rescue ValidationError
      puts '正しい郵便番号を入力してください'
    end
  end
end