require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :id => 1,
      :name => "MyString",
      :type => "",
      :odd => 1.5
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_path(@team), "post" do
      assert_select "input#team_id[name=?]", "team[id]"
      assert_select "input#team_name[name=?]", "team[name]"
      assert_select "input#team_type[name=?]", "team[type]"
      assert_select "input#team_odd[name=?]", "team[odd]"
    end
  end
end
