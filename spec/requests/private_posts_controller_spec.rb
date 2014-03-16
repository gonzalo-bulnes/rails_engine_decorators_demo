require 'spec_helper'

  describe PrivatePostsController do
    it "does not raise NoMethodError" do
      expect{ subject.decorated? }.not_to raise_error
    end

    it "is decorated" do
      expect(subject.decorated?).to eq true
    end
end

