require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :id => "",
      :name => "MyString",
      :rating => "",
      :balance => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_id[name=?]", "user[id]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_rating[name=?]", "user[rating]"
      assert_select "input#user_balance[name=?]", "user[balance]"
    end
  end
end
