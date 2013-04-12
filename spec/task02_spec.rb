require "./spec/spec_helper"
require "euler/task02"

describe Task02 do
  let(:subject) { Task02.new }

  context "#next_pair" do
    {[1, 2] => [5, 8],
     [5, 8] => [21, 34]
    }.each do |from_pair, to_pair|
      it "should make #{to_pair.inspect} from #{from_pair.inspect}" do
        subject.next_pair(from_pair).should == to_pair
      end
    end
  end

  context "#sum_before" do
    {100 => 44, 4_000_000 => 4_613_732}.each do |limit, sum|
      it "should sum before #{limit} and make a value #{sum}" do
        subject.sum_before(limit).should == sum
      end
    end
  end

end
