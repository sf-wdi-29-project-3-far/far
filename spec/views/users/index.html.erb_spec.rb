require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :current_city => "Current City",
        :origin_city => "Origin City",
        :native_language => "Native Language",
        :languages => "MyText",
        :age => 1
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :current_city => "Current City",
        :origin_city => "Origin City",
        :native_language => "Native Language",
        :languages => "MyText",
        :age => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Current City".to_s, :count => 2
    assert_select "tr>td", :text => "Origin City".to_s, :count => 2
    assert_select "tr>td", :text => "Native Language".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
