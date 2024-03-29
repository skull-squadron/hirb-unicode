require_relative './test_helper'

describe "String" do

  describe ".size returns correct width" do
    it "given non-unicode string" do
      Hirb::String.size("Hello, world.").should == 13
    end
    it "given unicode string" do
      Hirb::String.size("鄉民您好").should == 8
      Hirb::String.size("こんにちは").should == 10
      Hirb::String.size("中英夾雜yoo").should == 11
    end
  end

  describe ".ljust returns justified string" do
    it "given non-unicode string" do
      Hirb::String.ljust("Hello, world.", 15).should == "Hello, world.  "
      Hirb::String.ljust("Hello, world.", 5).should == "Hello, world."
    end
    it "given unicode string" do
      Hirb::String.ljust("還我牛", 9).should == "還我牛   "
      Hirb::String.ljust("維大利", 5).should == "維大利"
    end
  end

  describe ".rjust returns justified string" do
    it "given non-unicode string" do
      Hirb::String.rjust("Hello, world.", 15).should == "  Hello, world."
      Hirb::String.rjust("Hello, world.", 1).should == "Hello, world."
    end
    it "given unicode string" do
      Hirb::String.rjust("恭喜發財", 13).should == "     恭喜發財"
      Hirb::String.rjust("紅包拿來", 1).should == "紅包拿來"
    end
  end

  describe ".slice returns sliced string" do
    it "given non-unicode string" do
      Hirb::String.slice("Hello, world.", 0, 10).should == "Hello, wor"
    end
    it "given unicode string that could exactly match the length" do
      Hirb::String.slice("三民主義五權憲法", 0, 8).should == "三民主義"
    end
    it "given unicode string that couldn't exactly match the length" do
      Hirb::String.slice("六合彩大樂透", 0, 5).should == "六合"
    end
  end

end
