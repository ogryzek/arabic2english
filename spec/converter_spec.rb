require 'rspec'
require_relative '../arabic2english.rb'

describe "arabic2english" do
  it "should handle single digit numbers" do
    expect { arabic2english 1 }.to output("one\n").to_stdout
    expect { arabic2english 8 }.to output("eight\n").to_stdout
    expect { arabic2english 0 }.to output("zero\n").to_stdout
  end

  it "should handle double digit teen numbers" do
    expect { arabic2english 10 }.to output("ten\n").to_stdout
    expect { arabic2english 13 }.to output("thirteen\n").to_stdout
    expect { arabic2english 19 }.to output("nineteen\n").to_stdout
  end

  it "should handle double digit numbers up to 99" do
    expect { arabic2english 99 }.to output("ninety nine\n").to_stdout
    expect { arabic2english 20 }.to output("twenty\n").to_stdout
    expect { arabic2english 01 }.to output("one\n").to_stdout
  end
end
