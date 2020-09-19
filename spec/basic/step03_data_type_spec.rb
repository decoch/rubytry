require 'spec_helper'
require 'date'
require 'bigdecimal'

describe 'Step03DataTypeSpec' do
  context 'basic type' do
    # What string is sea variable at the method end? <br>
    # (メソッド終了時の変数 sea の中身は？)
    it 'datatype basic type' do
      sea = "mystic"
      land = 416
      piari = Date.new(2001, 9, 4)
      bonvo = DateTime.new(2001, 9, 4, 12, 34, 56)
      dstore = true
      amba = BigDecimal("9.4")

      piari = piari + 1
      land = piari.year
      bonvo = bonvo << 1
      land = bonvo.month
      land -= 1
      if dstore
        addedDecimal = amba + BigDecimal(land)
        sea = addedDecimal.to_s
      end
      log(sea); # your answer? =>
    end
  end

  context 'object' do
    # Same as the previous method question. (前のメソッドの質問と同じ)
    it 'datatype object' do
      stage = St3ImmutableStage.new("hangar")
      sea = stage.stage_name()
      log(sea) # your answer? =>
    end
  end

  class St3ImmutableStage
    attr_reader :stage_name

    def initialize(stage_name)
      @stage_name = stage_name
    end
  end
end

