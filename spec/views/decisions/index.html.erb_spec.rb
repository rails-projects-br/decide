require 'rails_helper'

RSpec.describe "decisions/index", type: :view do
  before(:each) do
    assign(:decisions, [
      Decision.create!(
        :decision => "MyText",
        :score => 2,
        :problem => nil
      ),
      Decision.create!(
        :decision => "MyText",
        :score => 2,
        :problem => nil
      )
    ])
  end

  it "renders a list of decisions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
