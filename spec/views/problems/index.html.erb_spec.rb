require 'rails_helper'

RSpec.describe "problems/index", type: :view do
  before(:each) do
    assign(:problems, [
      Problem.create!(
        :title => "Title",
        :description => "MyText",
        :ha => "Ha",
        :score => 2,
        :open => false
      ),
      Problem.create!(
        :title => "Title",
        :description => "MyText",
        :ha => "Ha",
        :score => 2,
        :open => false
      )
    ])
  end

  it "renders a list of problems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ha".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
