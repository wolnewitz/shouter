require "rails_helper"
require "shouts_helper"

describe ShoutsHelper do
  include ActionView::Helpers
  include ShoutsHelper
  describe "#shouterize" do
    it "does nothing for shouts with no hashtags" do
      expect(shouterize("hello")).to eq("hello")
    end

    #it "adds anchor tags around hashtags" do
      #expect(shouterize("hello #howdy")).to eq("hello <a href=")
    #end
  end
end
