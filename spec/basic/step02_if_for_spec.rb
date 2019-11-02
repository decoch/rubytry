require 'spec_helper'

describe 'Step02IfForSpec' do
  context 'if statement' do
    # What string is sea variable at the method end?
    # メソッド終了時の変数 sea の中身は？
    it 'spec if basic' do
      sea = 904
      if sea >= 904
        sea = 2001
      end
      log(sea)
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'spec if else basic' do
      sea = 904
      if sea >= 904
        sea = 2001
      else
        sea = 7
      end
      log(sea) # your answer? =>
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'spec if elsif basic' do
      sea = 904
      if sea > 904
        sea = 2001
      elsif sea >= 904
        sea = 7
      elsif sea >= 903
        sea = 8
      else
        sea = 9
      end
      log(sea) # your answer? =>
    end

    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'spec if elsif nested' do
      land = false
      sea = 904
      if sea > 904
        sea = 2001
      elsif land && sea >= 904
        sea = 7
      elsif sea >= 903 || land
        sea = 8
        if !land
          land = true
        elsif sea <= 903
          sea += 1
        end
      else
        sea = 9
      end
      if land
        sea = 10
      end
      log(sea) # your answer? =>
    end
  end
end

