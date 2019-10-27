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
      land = 8.to_s
      piari = nil.to_s
      dstore = 'mal'
      sea = sea + land + piari + ':' + dstore
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
end
