require 'spec_helper'

describe String do
  describe '#<<' do
    example 'nilは追加できない', :exception do
      s = 'ABC'
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
