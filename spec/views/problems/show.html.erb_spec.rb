require 'rails_helper'

RSpec.describe "problems/show", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :title => "Title",
      :description => "MyText",
      :ha => "Ha",
      :score => 2,
      :open => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ha/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
