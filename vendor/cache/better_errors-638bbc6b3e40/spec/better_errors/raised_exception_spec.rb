require "spec_helper"
require "rspec/its"

module BetterErrors
  describe RaisedException do
    let(:exception) { RuntimeError.new("whoops") }
    subject { RaisedException.new(exception) }

    its(:exception) { is_expected.to eq exception }
    its(:message)   { is_expected.to eq "whoops" }
    its(:type)      { is_expected.to eq RuntimeError }

    context "when the exception wraps another exception" do
      let(:original_exception) { RuntimeError.new("something went wrong!") }
      let(:exception) { double(:original_exception => original_exception) }

      its(:exception) { is_expected.to eq original_exception }
      its(:message)   { is_expected.to eq "something went wrong!" }
    end

    context "when the exception is a syntax error" do
      let(:exception) { SyntaxError.new("foo.rb:123: you made a typo!") }

      its(:message) { is_expected.to eq "you made a typo!" }
      its(:type)    { is_expected.to eq SyntaxError }

      it "has the right filename and line number in the backtrace" do
        expect(subject.backtrace.first.filename).to eq("foo.rb")
        expect(subject.backtrace.first.line).to eq(123)
      end
    end

    context "when the exception is a HAML syntax error" do
      before do
        stub_const("Haml::SyntaxError", Class.new(SyntaxError))
      end

      let(:exception) {
        Haml::SyntaxError.new("you made a typo!").tap do |ex|
          ex.set_backtrace(["foo.rb:123", "haml/internals/blah.rb:123456"])
        end
      }

      its(:message) { is_expected.to eq "you made a typo!" }
      its(:type)    { is_expected.to eq Haml::SyntaxError }

      it "has the right filename and line number in the backtrace" do
        expect(subject.backtrace.first.filename).to eq("foo.rb")
        expect(subject.backtrace.first.line).to eq(123)
      end
    end

    context "when the exception is a Coffeelint syntax error" do
      before do
        stub_const("Sprockets::Coffeelint::Error", Class.new(SyntaxError))
      end

      let(:exception) {
        Sprockets::Coffeelint::Error.new("[stdin]:11:88: error: unexpected=").tap do |ex|
          ex.set_backtrace(["app/assets/javascripts/files/index.coffee:11", "sprockets/coffeelint.rb:3"])
        end
      }

      its(:message) { is_expected.to eq "[stdin]:11:88: error: unexpected=" }
      its(:type)    { is_expected.to eq Sprockets::Coffeelint::Error }

      it "has the right filename and line number in the backtrace" do
        expect(subject.backtrace.first.filename).to eq("app/assets/javascripts/files/index.coffee")
        expect(subject.backtrace.first.line).to eq(11)
      end
    end
  end
end
