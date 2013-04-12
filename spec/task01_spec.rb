require "./spec/spec_helper"
require "euler/task01"

describe Task01 do
  context "#sum" do
    {10 => 23, 20 => 78}.each do |limit, result|

      it "should return #{result} for #{limit}" do
        Task01.new(limit).sum.should == result
      end
    end
  end
end
