require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :password_digest => "Password Digest",
      :current_city => "Current City",
      :origin_city => "Origin City",
      :native_language => "Native Language",
      :languages => "MyText",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Current City/)
    expect(rendered).to match(/Origin City/)
    expect(rendered).to match(/Native Language/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
