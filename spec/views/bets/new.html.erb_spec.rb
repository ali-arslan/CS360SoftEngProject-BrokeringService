require 'spec_helper'

describe "bets/new" do
  before(:each) do
    assign(:bet, stub_model(Bet,
      :userid => 1,
      :teamid => 1,
      :value => 1
    ).as_new_record)
  end

  it "renders new bet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bets_path, "post" do
      assert_select "input#bet_userid[name=?]", "bet[userid]"
      assert_select "input#bet_teamid[name=?]", "bet[teamid]"
      assert_select "input#bet_value[name=?]", "bet[value]"
    end
  end
end
