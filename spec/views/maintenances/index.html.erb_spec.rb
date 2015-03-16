require 'rails_helper'

RSpec.describe "maintenances/index", type: :view do
  before(:each) do
    assign(:maintenances, [
      Maintenance.create!(
        :image => "Image",
        :title => "Title",
        :description => "MyText"
      ),
      Maintenance.create!(
        :image => "Image",
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of maintenances" do
    render
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
