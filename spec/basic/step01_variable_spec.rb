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
end
