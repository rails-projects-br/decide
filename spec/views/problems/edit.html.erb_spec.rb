require 'rails_helper'

RSpec.describe "problems/edit", type: :view do
  before(:each) do
    @problem = assign(:problem, Problem.create!(
      :title => "MyString",
      :description => "MyText",
      :ha => "MyString",
      :score => 1,
      :open => false
    ))
  end

  it "renders the edit problem form" do
    render

    assert_select "form[action=?][method=?]", problem_path(@problem), "post" do

      assert_select "input#problem_title[name=?]", "problem[title]"

      assert_select "textarea#problem_description[name=?]", "problem[description]"

      assert_select "input#problem_ha[name=?]", "problem[ha]"

      assert_select "input#problem_score[name=?]", "problem[score]"

      assert_select "input#problem_open[name=?]", "problem[open]"
    end
  end
end
