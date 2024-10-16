require 'rails_helper'

RSpec.describe "jits/new", type: :view do
  before(:each) do
    assign(:jit, Jit.new(
      content: "MyString",
      likes: 1
    ))
  end

  it "renders new jit form" do
    render

    assert_select "form[action=?][method=?]", jits_path, "post" do

      assert_select "input[name=?]", "jit[content]"

      assert_select "input[name=?]", "jit[likes]"
    end
  end
end
