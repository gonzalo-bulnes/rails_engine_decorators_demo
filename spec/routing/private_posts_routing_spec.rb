require "spec_helper"

describe PrivatePostsController do
  describe "routing" do

    it "routes to #index" do
      get("/private_posts").should route_to("private_posts#index")
    end

    it "routes to #new" do
      get("/private_posts/new").should route_to("private_posts#new")
    end

    it "routes to #show" do
      get("/private_posts/1").should route_to("private_posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/private_posts/1/edit").should route_to("private_posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/private_posts").should route_to("private_posts#create")
    end

    it "routes to #update" do
      put("/private_posts/1").should route_to("private_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/private_posts/1").should route_to("private_posts#destroy", :id => "1")
    end

  end
end
