require './base.rb'
require './q4/user.rb'

class Q4::Main < Base
  def self.execute
    puts '〜管理ユーザー作成〜'
    admin_user = Q4::User.new(name: '管理ユーザー', role: 'admin')
    admin_user.disp_data

    puts '〜一般ユーザー作成〜'
    general_user = Q4::User.new(name: '一般ユーザー', role: 'general')
    general_user.disp_data

    puts '〜管理ユーザーによるユーザー作成〜'
    user1 = admin_user.create_user(name: 'ユーザー1', role: 'general')
    user1.disp_data

    puts '〜一般ユーザーによるユーザー作成〜'
    user2 = general_user.create_user(name: 'ユーザー2', role: 'general')

    puts '〜一般ユーザーによりユーザー1の権限を変更〜'
    general_user.change_admin(user1)
    user1.disp_data

    puts '〜管理ユーザーにより一般ユーザーの権限を変更〜'
    admin_user.change_admin(general_user)
    general_user.disp_data

    puts '〜管理ユーザーにより一般ユーザーの権限を変更(2回目)〜'
    admin_user.change_admin(general_user)
    general_user.disp_data
  end
end