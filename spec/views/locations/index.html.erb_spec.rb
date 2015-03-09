require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :zip_code => "Zip Code",
        :user => nil
      ),
      Location.create!(
        :zip_code => "Zip Code",
        :user => nil
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
