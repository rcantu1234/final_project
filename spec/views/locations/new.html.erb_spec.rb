require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :zip_code => "MyString",
      :user => nil
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_zip_code[name=?]", "location[zip_code]"

      assert_select "input#location_user_id[name=?]", "location[user_id]"
    end
  end
end
