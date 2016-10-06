require 'rails_helper'

RSpec.describe "decisions/show", type: :view do
  before(:each) do
    @decision = assign(:decision, Decision.create!(
      :decision => "MyText",
      :score => 2,
      :problem => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
