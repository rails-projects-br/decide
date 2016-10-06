require 'rails_helper'

RSpec.describe "decisions/edit", type: :view do
  before(:each) do
    @decision = assign(:decision, Decision.create!(
      :decision => "MyText",
      :score => 1,
      :problem => nil
    ))
  end

  it "renders the edit decision form" do
    render

    assert_select "form[action=?][method=?]", decision_path(@decision), "post" do

      assert_select "textarea#decision_decision[name=?]", "decision[decision]"

      assert_select "input#decision_score[name=?]", "decision[score]"

      assert_select "input#decision_problem_id[name=?]", "decision[problem_id]"
    end
  end
end
