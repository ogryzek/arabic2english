require 'rspec'
require_relative '../arabic2english.rb'

describe "arabic2english" do
  it "should handle single digit numbers" do
    expect { arabic2english 1 }.to output("one\n").to_stdout
    expect { arabic2english 8 }.to output("eight\n").to_stdout
    expect { arabic2english 0 }.to output("zero\n").to_stdout
  end
end
