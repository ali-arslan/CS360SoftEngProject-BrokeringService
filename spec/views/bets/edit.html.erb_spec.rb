require 'spec_helper'

describe "bets/edit" do
  before(:each) do
    @bet = assign(:bet, stub_model(Bet,
      :userid => 1,
      :teamid => 1,
      :value => 1
    ))
  end

  it "renders the edit bet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bet_path(@bet), "post" do
      assert_select "input#bet_userid[name=?]", "bet[userid]"
      assert_select "input#bet_teamid[name=?]", "bet[teamid]"
      assert_select "input#bet_value[name=?]", "bet[value]"
    end
  end
end
