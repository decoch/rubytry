require 'spec_helper'

describe 'Step01VariableTest' do
  context 'local variable' do
    # What string is sea variable at the method end?
    # メソッド終了時の変数 sea の中身は？
    it 'variable basic' do
      sea = 'mystic'
      log(sea) # your answer? => mystic
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'variable initial' do
      sea = 'mystic'
      land = 8
      piari = nil
      dstore = 'mal'
      sea = "#{sea}#{land}#{piari}:#{dstore}"
      log(sea) # your answer? =>
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'variable reassigned basic' do
      sea = 'mystic'
      land = 'oneman'
      sea = land
      land = land + "'s dreams"
      log(sea) # your answer? =>
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'variable reassigned int' do
      sea = 94
      land = 415
      sea = land
      land += 1
      log(sea) # your answer? =>
    end
  end

  context 'instance variable' do
    class TestClass
      attr_accessor :broadway, :dockside, :hangar, :magiclamp
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'variable instance variable default value' do
      sea = TestClass.new.broadway
      log(sea) # your answer? =>
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'variable instance variable via method' do
      instance = TestClass.new
      instance.broadway = 'bbb'
      instance.magiclamp = 'magician'
      instance.dockside = 0
      help_instance_variable_via_method(instance, instance.magiclamp)
      sea = "#{instance.broadway}|#{instance.dockside}|#{instance.hangar}|#{instance.magiclamp}"
      log(sea) # your answer? =>
    end

    def help_instance_variable_via_method(instance, magiclamp)
      instance.broadway = 'bigband'
      instance.dockside += 1
      magiclamp = 'burn'
    end
  end

  context 'method argument' do
    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'immutable method-call' do
      sea = "harbor";
      land = 415;
      help_method_argument_immutable_methodcall(sea, land);
      log(sea); # your answer? => 
    end

    def help_method_argument_immutable_methodcall(sea, land)
      land += 1
      sea + land.to_s
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'mutable method-call' do
      sea = "harbor";
      land = 415;
      help_method_argument_mutable_methodcall(sea, land);
      log(sea); # your answer? => 
    end

    def help_method_argument_mutable_methodcall(sea, land)
      land += 1
      sea << land.to_s
    end
  end

  context 'challenge' do
    # Define variables as followings:
    # o local variable named sea typed String, initial value is "mystic"
    # o local variable named land typed Integer, initial value is null
    # o instance variable named piari typed int, without initial value
    # o show all variables by log() as comma-separated
    #
    # (変数を以下のように定義しましょう):
    # o ローカル変数、名前はsea, 型はString, 初期値は "mystic"
    # o ローカル変数、名前はland, 型はInteger, 初期値は null
    # o インスタンス変数、名前はpiari, 型はInteger, 初期値なし
    # o すべての変数をlog()でカンマ区切りの文字列で表示
    it 'variable writing' do
    end

    # Make your original exercise as question style about variable. <br>
    # (変数についてあなたのオリジナルの質問形式のエクササイズを作ってみましょう)
    #
    # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
    # your question here (ここにあなたの質問を):
    # 
    # _/_/_/_/_/_/_/_/_/_/
    it 'test variable your exercise' do
    end
  end
end