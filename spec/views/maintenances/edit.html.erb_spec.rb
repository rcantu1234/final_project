require 'rails_helper'

RSpec.describe "maintenances/edit", type: :view do
  before(:each) do
    @maintenance = assign(:maintenance, Maintenance.create!(
      :image => "MyString",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit maintenance form" do
    render

    assert_select "form[action=?][method=?]", maintenance_path(@maintenance), "post" do

      assert_select "input#maintenance_image[name=?]", "maintenance[image]"

      assert_select "input#maintenance_title[name=?]", "maintenance[title]"

      assert_select "textarea#maintenance_description[name=?]", "maintenance[description]"
    end
  end
end
