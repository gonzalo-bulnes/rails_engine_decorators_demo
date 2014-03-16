require 'spec_helper'

describe "private_posts/index" do
  before(:each) do
    assign(:private_posts, [
      stub_model(PrivatePost,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(PrivatePost,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of private_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
