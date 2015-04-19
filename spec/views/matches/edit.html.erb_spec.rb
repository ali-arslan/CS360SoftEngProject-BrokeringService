require 'spec_helper'

describe "matches/edit" do
  before(:each) do
    @match = assign(:match, stub_model(Match,
      :team1id => 1,
      :team2id => ""
    ))
  end

  it "renders the edit match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", match_path(@match), "post" do
      assert_select "input#match_team1id[name=?]", "match[team1id]"
      assert_select "input#match_team2id[name=?]", "match[team2id]"
    end
  end
end
