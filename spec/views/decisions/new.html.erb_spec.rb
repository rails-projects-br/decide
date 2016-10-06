require 'rails_helper'

RSpec.describe "decisions/new", type: :view do
  before(:each) do
    assign(:decision, Decision.new(
      :decision => "MyText",
      :score => 1,
      :problem => nil
    ))
  end

  it "renders new decision form" do
    render

    assert_select "form[action=?][method=?]", decisions_path, "post" do

      assert_select "textarea#decision_decision[name=?]", "decision[decision]"

      assert_select "input#decision_score[name=?]", "decision[score]"

      assert_select "input#decision_problem_id[name=?]", "decision[problem_id]"
    end
  end
end
