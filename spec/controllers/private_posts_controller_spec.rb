require 'spec_helper'

describe PrivatePostsController do

  # This should return the minimal set of attributes required to create a valid
  # PrivatePost. As you add validations to PrivatePost, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrivatePostsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "actions" do
    it "all require authentication" do
      # That's true for all actions, yet I think there's no need to repeat them all here.
      lambda { get :index, {}, valid_session }.should raise_exception(RuntimeError)
      lambda { get :new, {}, valid_session }.should raise_exception(RuntimeError)
    end
  end
end

