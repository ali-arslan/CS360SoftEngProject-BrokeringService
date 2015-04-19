require 'spec_helper'

describe "matches/new" do
  before(:each) do
    assign(:match, stub_model(Match,
      :team1id => 1,
      :team2id => ""
    ).as_new_record)
  end

  it "renders new match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", matches_path, "post" do
      assert_select "input#match_team1id[name=?]", "match[team1id]"
      assert_select "input#match_team2id[name=?]", "match[team2id]"
    end
  end
end
