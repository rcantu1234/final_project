require 'rails_helper'

RSpec.describe "maintenances/new", type: :view do
  before(:each) do
    assign(:maintenance, Maintenance.new(
      :image => "MyString",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new maintenance form" do
    render

    assert_select "form[action=?][method=?]", maintenances_path, "post" do

      assert_select "input#maintenance_image[name=?]", "maintenance[image]"

      assert_select "input#maintenance_title[name=?]", "maintenance[title]"

      assert_select "textarea#maintenance_description[name=?]", "maintenance[description]"
    end
  end
end
