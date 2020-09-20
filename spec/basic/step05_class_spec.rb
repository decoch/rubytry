require 'spec_helper'

describe 'Step05ClassSpec' do
  context 'how to use' do
    # What string is sea variable at the method end? <br>
    # (メソッド終了時の変数 sea の中身は？)
    it 'class how to use basic' do
      booth = TicketBooth.new()
      booth.buy_one_day_passport(7400)
      sea = booth.quantity
      log(sea) # your answer? => 
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'class how to use overpay' do
      booth = TicketBooth.new()
      booth.buy_one_day_passport(10000)
      sea = booth.sales_proceeds
      log(sea) # your answer? => 
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'class how to use nosales' do
      booth = TicketBooth.new()
      sea = booth.sales_proceeds
      log(sea) # your answer? => 
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'class how to use wrong quantity' do
      sea = do_spec_class_ticket_wrong_quantity
      log(sea) # your answer? => 
    end
  end

  def do_spec_class_ticket_wrong_quantity()
    booth = TicketBooth.new()
    handed_money = 7399
    begin
      booth.buy_one_day_passport(handed_money)
    rescue TicketShortMoneyError => e
      log("Failed to buy one-day passport: money=#{handed_money}, err=#{e}")
    end
    booth.quantity
  end

  context "let's fix" do
    # Fix the problem of ticket quantity reduction when short money. (Don't forget to fix also previous exercise answers) <br>
    # (お金不足でもチケットが減る問題をクラスを修正して解決しましょう (以前のエクササイズのanswerの修正を忘れずに))
    it "class let's fix ticket quantity reduction" do
      sea = do_spec_class_ticket_wrong_quantity
      log(sea) # should be max quantity, visual check here
    end

    # Fix the problem of sales proceeds increased by handed money. (Don't forget to fix also previous exercise answers) <br>
    # (受け取ったお金の分だけ売上が増えていく問題をクラスを修正して解決しましょう (以前のエクササイズのanswerの修正を忘れずに))
    it "class let's fix sales proceeds increase" do
      booth = TicketBooth.new
      booth.buy_one_day_passport(10000)
      sea = booth.sales_proceeds
      log(sea) # should be same as one-day price, visual check here
    end

    # Recycle duplicate logics between one-day and two-day by e.g. private method in class. (And confirm result of both before and after) <br>
    # (OneDayとTwoDayで冗長なロジックがあったら、クラス内のprivateメソッドなどで再利用しましょう (修正前と修正後の実行結果を確認))
    it "class let's fix make method twoday" do
      # comment out after making the method
      # booth = TicketBooth.new
      # money = 14000
      # change = booth.buy_one_day_passport(money)
      # sea = booth.sales_proceeds + change
      # log(sea) # should be same as money

      # and show two-day passport quantity here
    end

    # Fix the problem of sales proceeds increased by handed money. (Don't forget to fix also previous exercise answers) <br>
    # (受け取ったお金の分だけ売上が増えていく問題をクラスを修正して解決しましょう (以前のエクササイズのanswerの修正を忘れずに))
    it "class let's fix refactor recycle" do
      booth = TicketBooth.new
      booth.buy_one_day_passport(10000)
      log("#{booth.quantity}, #{booth.sales_proceeds}") # should be same as before-fix
    end
  end

  context 'challenge' do
    # Now you cannot get ticket if you buy one-day passport, so return Ticket class and do in-park. <br>
    # (OneDayPassportを買ってもチケットをもらえませんでした。戻り値でTicketクラスを戻すようにしてインしましょう)
    it 'class more fix return ticket' do
      # comment out after modifying the method
      # booth = TicketBooth.new
      # one_day_passport = booth.buy_one_day_passport(10000)
      # log(one_day_passport.display_price) # should be same as one-day price
      # log(one_day_passport.is_already_in?) # should be false
      # one_day_passport.do_in_park
      # log(one_day_passport.is_already_in?) # should be true
    end

    # Now also you cannot get ticket if two-day passport, so return class that has ticket and change. <br>
    # (TwoDayPassportもチケットをもらえませんでした。チケットとお釣りを戻すクラスを作って戻すようにしましょう)
    it 'class more fix return ticket' do
      # comment out after modifying the method
      # booth = TicketBooth.new
      # handed_money = 20000
      # two_day_passport_result = booth.buy_two_day_passport(handed_money)
      # two_day_passport = two_day_passport_result.ticket
      # change = two_day_passport_result.change
      # log(two_day_passport.display_price + change) # should be same as money
    end

    # Now you cannot judge ticket type "one-day or two-day?", so add method to judge it. <br>
    # (チケットをもらってもOneDayなのかTwoDayなのか区別が付きません。区別を付けられるメソッドを追加しましょう)
    it 'class more fix type' do
      # your confirmation code here
    end
  end

  context 'good luck' do
    # TODO: interface -> duck typing
    # Now only one use with two-day passport, so split ticket in one-day and two-day class and use interface. <br>
    # <pre>
    # o change Ticket class to interface, define doInPark(), getDisplayPrice() in it
    # o make class for one-day and class for plural days (called implementation class)
    # o make implementation classes implement Ticket interface
    # o doInPark() of plural days can execute defined times
    # </pre>
    # (TwoDayのチケットが一回しか利用できません。OneDayとTwoDayのクラスを分けてインターフェースを使うようにしましょう)
    # <pre>
    # o Ticket をインターフェース(interface)にして、doInPark(), getDisplayPrice() を定義
    # o OneDay用のクラスと複数日用のクラスを作成 (実装クラスと呼ぶ)
    # o 実装クラスが Ticket を implements するように
    # o 複数日用のクラスでは、決められた回数だけ doInPark() できるように
    # </pre>
    it 'class more fix use interface' do
      # your confirmation code here
    end

    # Fix it to be able to buy four-day passport (price is 22400). <br>
    # (FourDayPassport (金額は22400) のチケットも買えるようにしましょう)
    it 'class more fix wonder' do
      # your confirmation code here
    end

    # Refactor if you want to fix (e.g. is it well-balanced name of method and variable?). <br>
    # (その他、気になるところがあったらリファクタリングしてみましょう (例えば、バランスの良いメソッド名や変数名になっていますか？))
    it 'class more fix your refactoring' do
      # write confirmation code here
    end
  end
end

class TicketBooth
  MAX_QUANTITY = 10
  ONE_DAY_PRICE = 7400 # when 2019/06/15

  attr_reader :quantity, :sales_proceeds

  def initialize
    @quantity = MAX_QUANTITY
  end

  def buy_one_day_passport(handed_money)
    if @quantity <= 0
      raise TicketSoldOutError.new("Sold out")
    end
    @quantity -= 1
    if handed_money < ONE_DAY_PRICE
      raise TicketShortMoneyError.new("Short money: #{handed_money}")
    end
    if @sales_proceeds != nil
      @sales_proceeds = @sales_proceeds + handed_money
    else
      @sales_proceeds = handed_money
    end
  end
end

class TicketSoldOutError < StandardError
  def initialize(message)
    super(message)
  end
end

class TicketShortMoneyError < StandardError
  def initialize(message)
    super(message)
  end
end
