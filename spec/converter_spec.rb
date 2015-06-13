require 'rspec'
require_relative '../arabic2english.rb'

describe "arabic2english" do
  it "should handle single digit numbers" do
    expect { arabic2english 1 }.to output("one\n").to_stdout
  end
end
