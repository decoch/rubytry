require 'spec_helper'

describe 'Step04MethodSpec' do
  context 'method call' do
    #  What string is sea variable at the method end? <br>
    # (メソッド終了時の変数 sea の中身は？)
    it 'method call basic' do
      sea = supply_something
      log(sea) # your answer? =>
    end

    it 'method call many' do
      sea = function_something('mystic')
      consume_something(supply_something)
      runnable_something
      log(sea) # your answer? => 
    end

    def function_something(name)
      replaced = name.sub('tic', 'mys')
      log("in function: #{replaced}")
      replaced
    end

    def supply_something
      sea = 'over'
      log("in supply: #{sea}")
      sea
    end

    def consume_something(sea)
      log("in consume: #{sea.sub("over", "mystic")}")
    end

    def runnable_something
      String sea = "outofshadow"
      log("in runnable: #{sea}")
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'method object' do
      mutable = St4MutableStage.new
      sea = 904
      land = false
      hello_mutable(sea - 4, land, mutable)
      if !land
        sea = sea + mutable.stage_name.length
      end
      log(sea) # your answer? => 
    end

    def hello_mutable(sea, land, piari)
      sea += 1
      land = true
      piari.stage_name = 'mystic'
      sea
    end

    class St4MutableStage
      attr_accessor :stage_name
    end
  end

  context 'instance variable' do
    # Same as the previous method question. (前のメソッドの質問と同じ) */
    it 'method instance variable' do
      sea = St4InstanceVariableStage.new.spec
      log(sea) # your answer? => 
    end

    class St4InstanceVariableStage
      def initialize
        @in_park_count = 0
      end

      def spec
        @has_annual_passport = true
        sea = @in_park_count
        off_annual_passport(@has_annual_passport)
        100.times do
          go_to_park
        end
        sea += 1
        sea = @in_park_count
        sea
      end

      def off_annual_passport(has_annual_passport)
        has_annual_passport = false
      end

      def go_to_park
        if @has_annual_passport
          @in_park_count += 1
        end
      end
    end
  end

  context 'challenge' do
    # Make private methods as followings, and comment out caller program in test method:
    # <pre>
    # o replace_a_to_b: has one argument as String, returns argument replaced "A" with "B" as String 
    # o replace_c_to_b: has one argument as String, returns argument replaced "C" with "B" as String 
    # o add_prefix: has two arguments as String, returns combined first argument with ":" with second argument 
    # o available_logging?: no argument, returns private instance variable "available_logging" initialized as true (also make it)  
    # o show_sea: has one argument as String argument, no return, show argument by log()
    # </pre>
    # (privateメソッドを以下のように定義して、テストメソッド内の呼び出しプログラムをコメントアウトしましょう):
    # <pre>
    # o replace_a_to_b: 一つのString引数、引数を "A" を "B" に置き換えらたStringを戻す 
    # o replace_c_to_b: 一つのString引数、引数を "C" を "B" に置き換えらたStringを戻す 
    # o add_prefix: 二つのString引数、第一引数と ":" と第二引数を連結したものを戻す 
    # o available_logging?: 引数なし、privateのインスタンス変数 "availableLogging" (初期値:true) を戻す (それも作る)  
    # o show_sea: 一つのString引数、戻り値なし、引数をlog()で表示する
    # </pre>
    it 'method making' do
      # comment out after making these methods
      # replaced = replace_c_to_b(replace_a_to_b('ABC'))
      # sea = add_prefix('broadway', replaced)
      # if St4ChallengeStage.new.available_logging?
      #   show_sea(sea)
      # end
    end

    # write methods here

    class St4ChallengeStage
      # write instance variables here

      def available_logging?
      end
    end
  end
end

